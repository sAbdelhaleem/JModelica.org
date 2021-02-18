#!/usr/bin/env python 
# -*- coding: utf-8 -*-

# Copyright (C) 2015 Modelon AB
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, version 3 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

"""
Tests the code generation option for LocalDAECollocator and
OptimizationSolver.
"""

import os
import numpy as N
from tests_jmodelica import testattr, get_files_path
try:
    from pyjmi import transfer_optimization_problem
except (NameError, ImportError):
    pass

def result_distance(res1, res2, names):
    assert N.array_equal(res1['time'], res2['time'])
    return max([N.max(N.abs(res1[name] - res2[name])) for name in names])

@testattr(casadi_base = True)
def test_code_gen():
    var_names = ('x1', 'x2', 'u')
    func_names = ['nlp_test', 'grad_f_test', 'jac_g_test', 'hess_lag_test']
    exts = ['.c']
    if os.name == 'nt':
        exts.append('.dll')
    else:
        exts.append('.so')
    
    file_path = os.path.join(get_files_path(), 'Modelica', 'VDP.mop')
    op = transfer_optimization_problem("VDP_pack.VDP_Opt2", file_path)
    
    opt_opts = op.optimize_options()
    
    # Result for comparison: don't use generated code
    res0 = op.optimize(options = opt_opts)
    
    # First solver: generate and compile new C code
    solver1 = op.prepare_optimization(options = opt_opts)
    solver1.enable_codegen('test')
    
    # Check that files were created and compiled, and store the
    # time that they were last changed
    file_ctimes = {}
    for func_name in func_names:
        for ext in exts:
            file_name = func_name + ext
            assert os.path.isfile(file_name)
            file_ctimes[file_name] = os.stat(file_name).st_ctime
    
    res1 = solver1.optimize()
    
    # Second solver: use existing code generated by the first solver
    solver2 = op.prepare_optimization(options = opt_opts)
    solver2.enable_codegen('test')
    
    # Check that files weren't modified
    for func_name in func_names:
        for ext in exts:
            file_name = func_name + ext
            assert file_ctimes[file_name] == os.stat(file_name).st_ctime
    
    res2 = solver2.optimize()
    
    # Check that all solvers gave the same result
    assert result_distance(res0, res1, var_names) < 1e-6
    assert result_distance(res0, res2, var_names) < 1e-6
