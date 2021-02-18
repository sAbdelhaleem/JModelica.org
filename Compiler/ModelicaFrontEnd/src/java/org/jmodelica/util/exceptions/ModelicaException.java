/*
    Copyright (C) 2015 Modelon AB

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, version 3 of the License.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
package org.jmodelica.util.exceptions;

/**
 * Common super class for all JModelica exceptions.
 */

public class ModelicaException extends RuntimeException {

    private static final long serialVersionUID = 1L;

    public ModelicaException() {}

    public ModelicaException(String message) {
        super(message);
    }

    public ModelicaException(String message, Throwable cause) {
        super(message, cause);
    }
}
