connector Pin
  Real v;
  flow Real i;
end Pin;

 connector PositivePin
    Real v;
    flow Real i;
  end PositivePin;

  connector NegativePin
    Real v;
    flow Real i;
  end NegativePin;

  model TwoPin
    Real v;
    PositivePin p;
    NegativePin n;
  equation
    v = p.v-n.v;
  end TwoPin;

  model OnePort
    Real v;
    Real i;
    PositivePin p;
    NegativePin n;
  equation
    v = p.v-n.v;
    0 = p.i+n.i;
    i = p.i;
  end OnePort;

  model Resistor
  extends OnePort;
    parameter Real R=1;
  equation
    R*i = v;
  end Resistor;

  model Capacitor
  extends OnePort;
    parameter Real C=1;
  equation
    i = C*der(v);
  end Capacitor;

  model Inductor
  extends OnePort;
    parameter Real L=1;
  equation
    L*der(i) = v;
  end Inductor;

  model ConstantVoltage
  extends OnePort;
    parameter Real V=1;
  equation
    v = V;
  end ConstantVoltage;

  model Ground
    Pin p;
  equation
    p.v = 0;
  end Ground;
  model BaseCircuit
    ConstantVoltage cv;
    Ground g;
    Inductor c_1_1;
    Capacitor c_1_2;
    Inductor c_1_3;
    Resistor c_1_4;
    Capacitor c_1_5;
    Capacitor c_1_6;
    Capacitor c_1_7;
    Inductor c_1_8;
    Inductor c_1_9;
    Inductor c_1_10;
    Resistor c_1_11;
    Capacitor c_1_12;
    Resistor c_1_13;
    Capacitor c_1_14;
    Resistor c_1_15;
    Inductor c_1_16;
    Inductor c_1_17;
    Inductor c_1_18;
    Capacitor c_1_19;
    Resistor c_1_20;
    Inductor c_2_1;
    Capacitor c_2_2;
    Inductor c_2_3;
    Resistor c_2_4;
    Resistor c_2_5;
    Capacitor c_2_6;
    Capacitor c_2_7;
    Inductor c_2_8;
    Resistor c_2_9;
    Capacitor c_2_10;
    Capacitor c_2_11;
    Inductor c_2_12;
    Capacitor c_2_13;
    Capacitor c_2_14;
    Resistor c_2_15;
    Inductor c_2_16;
    Capacitor c_2_17;
    Resistor c_2_18;
    Inductor c_2_19;
    Inductor c_2_20;
    Resistor c_2_21;
    Capacitor c_3_1;
    Inductor c_3_2;
    Resistor c_3_3;
    Capacitor c_3_4;
    Resistor c_3_5;
    Inductor c_3_6;
    Capacitor c_3_7;
    Resistor c_3_8;
    Resistor c_3_9;
    Inductor c_3_10;
    Resistor c_3_11;
    Inductor c_3_12;
    Capacitor c_3_13;
    Capacitor c_3_14;
    Capacitor c_3_15;
    Inductor c_3_16;
    Resistor c_3_17;
    Capacitor c_3_18;
    Resistor c_3_19;
    Capacitor c_3_20;
    Capacitor c_4_1;
    Inductor c_4_2;
    Resistor c_4_3;
    Inductor c_4_4;
    Resistor c_4_5;
    Resistor c_4_6;
    Resistor c_4_7;
    Capacitor c_4_8;
    Inductor c_4_9;
    Capacitor c_4_10;
    Inductor c_4_11;
    Resistor c_4_12;
    Resistor c_4_13;
    Inductor c_4_14;
    Inductor c_4_15;
    Inductor c_4_16;
    Inductor c_4_17;
    Capacitor c_4_18;
    Capacitor c_4_19;
    Resistor c_4_20;
    Inductor c_4_21;
    Inductor c_5_1;
    Capacitor c_5_2;
    Capacitor c_5_3;
    Capacitor c_5_4;
    Capacitor c_5_5;
    Resistor c_5_6;
    Resistor c_5_7;
    Capacitor c_5_8;
    Capacitor c_5_9;
    Capacitor c_5_10;
    Resistor c_5_11;
    Resistor c_5_12;
    Capacitor c_5_13;
    Inductor c_5_14;
    Inductor c_5_15;
    Resistor c_5_16;
    Inductor c_5_17;
    Resistor c_5_18;
    Capacitor c_5_19;
    Resistor c_5_20;
    Capacitor c_6_1;
    Capacitor c_6_2;
    Inductor c_6_3;
    Resistor c_6_4;
    Capacitor c_6_5;
    Inductor c_6_6;
    Capacitor c_6_7;
    Capacitor c_6_8;
    Resistor c_6_9;
    Capacitor c_6_10;
    Capacitor c_6_11;
    Capacitor c_6_12;
    Inductor c_6_13;
    Resistor c_6_14;
    Capacitor c_6_15;
    Inductor c_6_16;
    Resistor c_6_17;
    Capacitor c_6_18;
    Inductor c_6_19;
    Inductor c_6_20;
    Capacitor c_6_21;
    Capacitor c_7_1;
    Resistor c_7_2;
    Resistor c_7_3;
    Capacitor c_7_4;
    Resistor c_7_5;
    Resistor c_7_6;
    Capacitor c_7_7;
    Capacitor c_7_8;
    Capacitor c_7_9;
    Resistor c_7_10;
    Resistor c_7_11;
    Resistor c_7_12;
    Inductor c_7_13;
    Inductor c_7_14;
    Inductor c_7_15;
    Capacitor c_7_16;
    Resistor c_7_17;
    Capacitor c_7_18;
    Capacitor c_7_19;
    Capacitor c_7_20;
    Inductor c_8_1;
    Inductor c_8_2;
    Capacitor c_8_3;
    Resistor c_8_4;
    Capacitor c_8_5;
    Capacitor c_8_6;
    Capacitor c_8_7;
    Resistor c_8_8;
    Resistor c_8_9;
    Inductor c_8_10;
    Capacitor c_8_11;
    Capacitor c_8_12;
    Inductor c_8_13;
    Resistor c_8_14;
    Capacitor c_8_15;
    Capacitor c_8_16;
    Capacitor c_8_17;
    Inductor c_8_18;
    Resistor c_8_19;
    Resistor c_8_20;
    Inductor c_8_21;
    Capacitor c_9_1;
    Inductor c_9_2;
    Inductor c_9_3;
    Resistor c_9_4;
    Inductor c_9_5;
    Resistor c_9_6;
    Capacitor c_9_7;
    Inductor c_9_8;
    Resistor c_9_9;
    Inductor c_9_10;
    Capacitor c_9_11;
    Capacitor c_9_12;
    Inductor c_9_13;
    Inductor c_9_14;
    Inductor c_9_15;
    Inductor c_9_16;
    Capacitor c_9_17;
    Inductor c_9_18;
    Inductor c_9_19;
    Inductor c_9_20;
    Resistor c_10_1;
    Resistor c_10_2;
    Resistor c_10_3;
    Capacitor c_10_4;
    Inductor c_10_5;
    Resistor c_10_6;
    Inductor c_10_7;
    Resistor c_10_8;
    Inductor c_10_9;
    Inductor c_10_10;
    Inductor c_10_11;
    Inductor c_10_12;
    Capacitor c_10_13;
    Resistor c_10_14;
    Inductor c_10_15;
    Inductor c_10_16;
    Resistor c_10_17;
    Inductor c_10_18;
    Resistor c_10_19;
    Resistor c_10_20;
    Capacitor c_10_21;
    Inductor c_11_1;
    Resistor c_11_2;
    Resistor c_11_3;
    Inductor c_11_4;
    Inductor c_11_5;
    Capacitor c_11_6;
    Capacitor c_11_7;
    Inductor c_11_8;
    Capacitor c_11_9;
    Resistor c_11_10;
    Inductor c_11_11;
    Capacitor c_11_12;
    Inductor c_11_13;
    Resistor c_11_14;
    Inductor c_11_15;
    Resistor c_11_16;
    Inductor c_11_17;
    Capacitor c_11_18;
    Resistor c_11_19;
    Capacitor c_11_20;
    Capacitor c_12_1;
    Resistor c_12_2;
    Resistor c_12_3;
    Resistor c_12_4;
    Capacitor c_12_5;
    Inductor c_12_6;
    Resistor c_12_7;
    Capacitor c_12_8;
    Resistor c_12_9;
    Resistor c_12_10;
    Inductor c_12_11;
    Inductor c_12_12;
    Capacitor c_12_13;
    Inductor c_12_14;
    Inductor c_12_15;
    Resistor c_12_16;
    Inductor c_12_17;
    Capacitor c_12_18;
    Inductor c_12_19;
    Inductor c_12_20;
    Capacitor c_12_21;
    Resistor c_13_1;
    Inductor c_13_2;
    Capacitor c_13_3;
    Resistor c_13_4;
    Capacitor c_13_5;
    Inductor c_13_6;
    Capacitor c_13_7;
    Capacitor c_13_8;
    Capacitor c_13_9;
    Inductor c_13_10;
    Capacitor c_13_11;
    Capacitor c_13_12;
    Resistor c_13_13;
    Inductor c_13_14;
    Resistor c_13_15;
    Capacitor c_13_16;
    Inductor c_13_17;
    Inductor c_13_18;
    Capacitor c_13_19;
    Capacitor c_13_20;
    Resistor c_14_1;
    Inductor c_14_2;
    Capacitor c_14_3;
    Inductor c_14_4;
    Resistor c_14_5;
    Capacitor c_14_6;
    Capacitor c_14_7;
    Inductor c_14_8;
    Capacitor c_14_9;
    Capacitor c_14_10;
    Inductor c_14_11;
    Capacitor c_14_12;
    Capacitor c_14_13;
    Inductor c_14_14;
    Resistor c_14_15;
    Resistor c_14_16;
    Inductor c_14_17;
    Capacitor c_14_18;
    Capacitor c_14_19;
    Resistor c_14_20;
    Resistor c_14_21;
    Inductor c_15_1;
    Inductor c_15_2;
    Capacitor c_15_3;
    Inductor c_15_4;
    Inductor c_15_5;
    Resistor c_15_6;
    Capacitor c_15_7;
    Capacitor c_15_8;
    Capacitor c_15_9;
    Inductor c_15_10;
    Capacitor c_15_11;
    Resistor c_15_12;
    Capacitor c_15_13;
    Capacitor c_15_14;
    Resistor c_15_15;
    Inductor c_15_16;
    Inductor c_15_17;
    Inductor c_15_18;
    Capacitor c_15_19;
    Inductor c_15_20;
    Resistor c_16_1;
    Inductor c_16_2;
    Inductor c_16_3;
    Inductor c_16_4;
    Capacitor c_16_5;
    Inductor c_16_6;
    Inductor c_16_7;
    Capacitor c_16_8;
    Inductor c_16_9;
    Inductor c_16_10;
    Resistor c_16_11;
    Inductor c_16_12;
    Inductor c_16_13;
    Capacitor c_16_14;
    Resistor c_16_15;
    Resistor c_16_16;
    Inductor c_16_17;
    Inductor c_16_18;
    Resistor c_16_19;
    Capacitor c_16_20;
    Capacitor c_16_21;
    Inductor c_17_1;
    Capacitor c_17_2;
    Inductor c_17_3;
    Inductor c_17_4;
    Inductor c_17_5;
    Capacitor c_17_6;
    Inductor c_17_7;
    Capacitor c_17_8;
    Inductor c_17_9;
    Resistor c_17_10;
    Capacitor c_17_11;
    Resistor c_17_12;
    Inductor c_17_13;
    Capacitor c_17_14;
    Inductor c_17_15;
    Inductor c_17_16;
    Inductor c_17_17;
    Resistor c_17_18;
    Capacitor c_17_19;
    Inductor c_17_20;
    Inductor c_18_1;
    Resistor c_18_2;
    Capacitor c_18_3;
    Resistor c_18_4;
    Capacitor c_18_5;
    Inductor c_18_6;
    Inductor c_18_7;
    Resistor c_18_8;
    Resistor c_18_9;
    Inductor c_18_10;
    Capacitor c_18_11;
    Resistor c_18_12;
    Capacitor c_18_13;
    Capacitor c_18_14;
    Capacitor c_18_15;
    Resistor c_18_16;
    Resistor c_18_17;
    Inductor c_18_18;
    Inductor c_18_19;
    Capacitor c_18_20;
    Inductor c_18_21;
    Capacitor c_19_1;
    Capacitor c_19_2;
    Resistor c_19_3;
    Inductor c_19_4;
    Resistor c_19_5;
    Resistor c_19_6;
    Capacitor c_19_7;
    Inductor c_19_8;
    Inductor c_19_9;
    Resistor c_19_10;
    Resistor c_19_11;
    Capacitor c_19_12;
    Inductor c_19_13;
    Capacitor c_19_14;
    Inductor c_19_15;
    Inductor c_19_16;
    Capacitor c_19_17;
    Resistor c_19_18;
    Resistor c_19_19;
    Inductor c_19_20;
    Inductor c_20_1;
    Inductor c_20_2;
    Resistor c_20_3;
    Resistor c_20_4;
    Capacitor c_20_5;
    Inductor c_20_6;
    Resistor c_20_7;
    Capacitor c_20_8;
    Capacitor c_20_9;
    Capacitor c_20_10;
    Resistor c_20_11;
    Inductor c_20_12;
    Inductor c_20_13;
    Resistor c_20_14;
    Resistor c_20_15;
    Inductor c_20_16;
    Inductor c_20_17;
    Resistor c_20_18;
    Capacitor c_20_19;
    Inductor c_20_20;
    Inductor c_20_21;
    Capacitor c_21_1;
    Capacitor c_21_2;
    Capacitor c_21_3;
    Inductor c_21_4;
    Capacitor c_21_5;
    Resistor c_21_6;
    Capacitor c_21_7;
    Inductor c_21_8;
    Capacitor c_21_9;
    Inductor c_21_10;
    Inductor c_21_11;
    Resistor c_21_12;
    Resistor c_21_13;
    Inductor c_21_14;
    Capacitor c_21_15;
    Capacitor c_21_16;
    Inductor c_21_17;
    Inductor c_21_18;
    Inductor c_21_19;
    Resistor c_21_20;
  equation
    connect(cv.p,c_1_1.p);
    connect(cv.n,g.p);
    connect(g.p,c_21_1.n);
    connect(c_1_1.n,c_1_2.p);
    connect(c_1_2.n,c_1_3.p);
    connect(c_1_3.n,c_1_4.p);
    connect(c_1_4.n,c_1_5.p);
    connect(c_1_5.n,c_1_6.p);
    connect(c_1_6.n,c_1_7.p);
    connect(c_1_7.n,c_1_8.p);
    connect(c_1_8.n,c_1_9.p);
    connect(c_1_9.n,c_1_10.p);
    connect(c_1_10.n,c_1_11.p);
    connect(c_1_11.n,c_1_12.p);
    connect(c_1_12.n,c_1_13.p);
    connect(c_1_13.n,c_1_14.p);
    connect(c_1_14.n,c_1_15.p);
    connect(c_1_15.n,c_1_16.p);
    connect(c_1_16.n,c_1_17.p);
    connect(c_1_17.n,c_1_18.p);
    connect(c_1_18.n,c_1_19.p);
    connect(c_1_19.n,c_1_20.p);
    connect(c_3_1.n,c_3_2.p);
    connect(c_3_2.n,c_3_3.p);
    connect(c_3_3.n,c_3_4.p);
    connect(c_3_4.n,c_3_5.p);
    connect(c_3_5.n,c_3_6.p);
    connect(c_3_6.n,c_3_7.p);
    connect(c_3_7.n,c_3_8.p);
    connect(c_3_8.n,c_3_9.p);
    connect(c_3_9.n,c_3_10.p);
    connect(c_3_10.n,c_3_11.p);
    connect(c_3_11.n,c_3_12.p);
    connect(c_3_12.n,c_3_13.p);
    connect(c_3_13.n,c_3_14.p);
    connect(c_3_14.n,c_3_15.p);
    connect(c_3_15.n,c_3_16.p);
    connect(c_3_16.n,c_3_17.p);
    connect(c_3_17.n,c_3_18.p);
    connect(c_3_18.n,c_3_19.p);
    connect(c_3_19.n,c_3_20.p);
    connect(c_5_1.n,c_5_2.p);
    connect(c_5_2.n,c_5_3.p);
    connect(c_5_3.n,c_5_4.p);
    connect(c_5_4.n,c_5_5.p);
    connect(c_5_5.n,c_5_6.p);
    connect(c_5_6.n,c_5_7.p);
    connect(c_5_7.n,c_5_8.p);
    connect(c_5_8.n,c_5_9.p);
    connect(c_5_9.n,c_5_10.p);
    connect(c_5_10.n,c_5_11.p);
    connect(c_5_11.n,c_5_12.p);
    connect(c_5_12.n,c_5_13.p);
    connect(c_5_13.n,c_5_14.p);
    connect(c_5_14.n,c_5_15.p);
    connect(c_5_15.n,c_5_16.p);
    connect(c_5_16.n,c_5_17.p);
    connect(c_5_17.n,c_5_18.p);
    connect(c_5_18.n,c_5_19.p);
    connect(c_5_19.n,c_5_20.p);
    connect(c_7_1.n,c_7_2.p);
    connect(c_7_2.n,c_7_3.p);
    connect(c_7_3.n,c_7_4.p);
    connect(c_7_4.n,c_7_5.p);
    connect(c_7_5.n,c_7_6.p);
    connect(c_7_6.n,c_7_7.p);
    connect(c_7_7.n,c_7_8.p);
    connect(c_7_8.n,c_7_9.p);
    connect(c_7_9.n,c_7_10.p);
    connect(c_7_10.n,c_7_11.p);
    connect(c_7_11.n,c_7_12.p);
    connect(c_7_12.n,c_7_13.p);
    connect(c_7_13.n,c_7_14.p);
    connect(c_7_14.n,c_7_15.p);
    connect(c_7_15.n,c_7_16.p);
    connect(c_7_16.n,c_7_17.p);
    connect(c_7_17.n,c_7_18.p);
    connect(c_7_18.n,c_7_19.p);
    connect(c_7_19.n,c_7_20.p);
    connect(c_9_1.n,c_9_2.p);
    connect(c_9_2.n,c_9_3.p);
    connect(c_9_3.n,c_9_4.p);
    connect(c_9_4.n,c_9_5.p);
    connect(c_9_5.n,c_9_6.p);
    connect(c_9_6.n,c_9_7.p);
    connect(c_9_7.n,c_9_8.p);
    connect(c_9_8.n,c_9_9.p);
    connect(c_9_9.n,c_9_10.p);
    connect(c_9_10.n,c_9_11.p);
    connect(c_9_11.n,c_9_12.p);
    connect(c_9_12.n,c_9_13.p);
    connect(c_9_13.n,c_9_14.p);
    connect(c_9_14.n,c_9_15.p);
    connect(c_9_15.n,c_9_16.p);
    connect(c_9_16.n,c_9_17.p);
    connect(c_9_17.n,c_9_18.p);
    connect(c_9_18.n,c_9_19.p);
    connect(c_9_19.n,c_9_20.p);
    connect(c_11_1.n,c_11_2.p);
    connect(c_11_2.n,c_11_3.p);
    connect(c_11_3.n,c_11_4.p);
    connect(c_11_4.n,c_11_5.p);
    connect(c_11_5.n,c_11_6.p);
    connect(c_11_6.n,c_11_7.p);
    connect(c_11_7.n,c_11_8.p);
    connect(c_11_8.n,c_11_9.p);
    connect(c_11_9.n,c_11_10.p);
    connect(c_11_10.n,c_11_11.p);
    connect(c_11_11.n,c_11_12.p);
    connect(c_11_12.n,c_11_13.p);
    connect(c_11_13.n,c_11_14.p);
    connect(c_11_14.n,c_11_15.p);
    connect(c_11_15.n,c_11_16.p);
    connect(c_11_16.n,c_11_17.p);
    connect(c_11_17.n,c_11_18.p);
    connect(c_11_18.n,c_11_19.p);
    connect(c_11_19.n,c_11_20.p);
    connect(c_13_1.n,c_13_2.p);
    connect(c_13_2.n,c_13_3.p);
    connect(c_13_3.n,c_13_4.p);
    connect(c_13_4.n,c_13_5.p);
    connect(c_13_5.n,c_13_6.p);
    connect(c_13_6.n,c_13_7.p);
    connect(c_13_7.n,c_13_8.p);
    connect(c_13_8.n,c_13_9.p);
    connect(c_13_9.n,c_13_10.p);
    connect(c_13_10.n,c_13_11.p);
    connect(c_13_11.n,c_13_12.p);
    connect(c_13_12.n,c_13_13.p);
    connect(c_13_13.n,c_13_14.p);
    connect(c_13_14.n,c_13_15.p);
    connect(c_13_15.n,c_13_16.p);
    connect(c_13_16.n,c_13_17.p);
    connect(c_13_17.n,c_13_18.p);
    connect(c_13_18.n,c_13_19.p);
    connect(c_13_19.n,c_13_20.p);
    connect(c_15_1.n,c_15_2.p);
    connect(c_15_2.n,c_15_3.p);
    connect(c_15_3.n,c_15_4.p);
    connect(c_15_4.n,c_15_5.p);
    connect(c_15_5.n,c_15_6.p);
    connect(c_15_6.n,c_15_7.p);
    connect(c_15_7.n,c_15_8.p);
    connect(c_15_8.n,c_15_9.p);
    connect(c_15_9.n,c_15_10.p);
    connect(c_15_10.n,c_15_11.p);
    connect(c_15_11.n,c_15_12.p);
    connect(c_15_12.n,c_15_13.p);
    connect(c_15_13.n,c_15_14.p);
    connect(c_15_14.n,c_15_15.p);
    connect(c_15_15.n,c_15_16.p);
    connect(c_15_16.n,c_15_17.p);
    connect(c_15_17.n,c_15_18.p);
    connect(c_15_18.n,c_15_19.p);
    connect(c_15_19.n,c_15_20.p);
    connect(c_17_1.n,c_17_2.p);
    connect(c_17_2.n,c_17_3.p);
    connect(c_17_3.n,c_17_4.p);
    connect(c_17_4.n,c_17_5.p);
    connect(c_17_5.n,c_17_6.p);
    connect(c_17_6.n,c_17_7.p);
    connect(c_17_7.n,c_17_8.p);
    connect(c_17_8.n,c_17_9.p);
    connect(c_17_9.n,c_17_10.p);
    connect(c_17_10.n,c_17_11.p);
    connect(c_17_11.n,c_17_12.p);
    connect(c_17_12.n,c_17_13.p);
    connect(c_17_13.n,c_17_14.p);
    connect(c_17_14.n,c_17_15.p);
    connect(c_17_15.n,c_17_16.p);
    connect(c_17_16.n,c_17_17.p);
    connect(c_17_17.n,c_17_18.p);
    connect(c_17_18.n,c_17_19.p);
    connect(c_17_19.n,c_17_20.p);
    connect(c_19_1.n,c_19_2.p);
    connect(c_19_2.n,c_19_3.p);
    connect(c_19_3.n,c_19_4.p);
    connect(c_19_4.n,c_19_5.p);
    connect(c_19_5.n,c_19_6.p);
    connect(c_19_6.n,c_19_7.p);
    connect(c_19_7.n,c_19_8.p);
    connect(c_19_8.n,c_19_9.p);
    connect(c_19_9.n,c_19_10.p);
    connect(c_19_10.n,c_19_11.p);
    connect(c_19_11.n,c_19_12.p);
    connect(c_19_12.n,c_19_13.p);
    connect(c_19_13.n,c_19_14.p);
    connect(c_19_14.n,c_19_15.p);
    connect(c_19_15.n,c_19_16.p);
    connect(c_19_16.n,c_19_17.p);
    connect(c_19_17.n,c_19_18.p);
    connect(c_19_18.n,c_19_19.p);
    connect(c_19_19.n,c_19_20.p);
    connect(c_21_1.n,c_21_2.p);
    connect(c_21_2.n,c_21_3.p);
    connect(c_21_3.n,c_21_4.p);
    connect(c_21_4.n,c_21_5.p);
    connect(c_21_5.n,c_21_6.p);
    connect(c_21_6.n,c_21_7.p);
    connect(c_21_7.n,c_21_8.p);
    connect(c_21_8.n,c_21_9.p);
    connect(c_21_9.n,c_21_10.p);
    connect(c_21_10.n,c_21_11.p);
    connect(c_21_11.n,c_21_12.p);
    connect(c_21_12.n,c_21_13.p);
    connect(c_21_13.n,c_21_14.p);
    connect(c_21_14.n,c_21_15.p);
    connect(c_21_15.n,c_21_16.p);
    connect(c_21_16.n,c_21_17.p);
    connect(c_21_17.n,c_21_18.p);
    connect(c_21_18.n,c_21_19.p);
    connect(c_21_19.n,c_21_20.p);
    connect(c_2_1.p,c_1_1.p);
    connect(c_2_1.n,c_3_1.p);
    connect(c_2_2.p,c_1_2.p);
    connect(c_2_2.n,c_3_2.p);
    connect(c_2_3.p,c_1_3.p);
    connect(c_2_3.n,c_3_3.p);
    connect(c_2_4.p,c_1_4.p);
    connect(c_2_4.n,c_3_4.p);
    connect(c_2_5.p,c_1_5.p);
    connect(c_2_5.n,c_3_5.p);
    connect(c_2_6.p,c_1_6.p);
    connect(c_2_6.n,c_3_6.p);
    connect(c_2_7.p,c_1_7.p);
    connect(c_2_7.n,c_3_7.p);
    connect(c_2_8.p,c_1_8.p);
    connect(c_2_8.n,c_3_8.p);
    connect(c_2_9.p,c_1_9.p);
    connect(c_2_9.n,c_3_9.p);
    connect(c_2_10.p,c_1_10.p);
    connect(c_2_10.n,c_3_10.p);
    connect(c_2_11.p,c_1_11.p);
    connect(c_2_11.n,c_3_11.p);
    connect(c_2_12.p,c_1_12.p);
    connect(c_2_12.n,c_3_12.p);
    connect(c_2_13.p,c_1_13.p);
    connect(c_2_13.n,c_3_13.p);
    connect(c_2_14.p,c_1_14.p);
    connect(c_2_14.n,c_3_14.p);
    connect(c_2_15.p,c_1_15.p);
    connect(c_2_15.n,c_3_15.p);
    connect(c_2_16.p,c_1_16.p);
    connect(c_2_16.n,c_3_16.p);
    connect(c_2_17.p,c_1_17.p);
    connect(c_2_17.n,c_3_17.p);
    connect(c_2_18.p,c_1_18.p);
    connect(c_2_18.n,c_3_18.p);
    connect(c_2_19.p,c_1_19.p);
    connect(c_2_19.n,c_3_19.p);
    connect(c_2_20.p,c_1_20.p);
    connect(c_2_20.n,c_3_20.p);
    connect(c_2_21.p,c_1_20.n);
    connect(c_2_21.n,c_3_20.n);
    connect(c_4_1.p,c_3_1.p);
    connect(c_4_1.n,c_5_1.p);
    connect(c_4_2.p,c_3_2.p);
    connect(c_4_2.n,c_5_2.p);
    connect(c_4_3.p,c_3_3.p);
    connect(c_4_3.n,c_5_3.p);
    connect(c_4_4.p,c_3_4.p);
    connect(c_4_4.n,c_5_4.p);
    connect(c_4_5.p,c_3_5.p);
    connect(c_4_5.n,c_5_5.p);
    connect(c_4_6.p,c_3_6.p);
    connect(c_4_6.n,c_5_6.p);
    connect(c_4_7.p,c_3_7.p);
    connect(c_4_7.n,c_5_7.p);
    connect(c_4_8.p,c_3_8.p);
    connect(c_4_8.n,c_5_8.p);
    connect(c_4_9.p,c_3_9.p);
    connect(c_4_9.n,c_5_9.p);
    connect(c_4_10.p,c_3_10.p);
    connect(c_4_10.n,c_5_10.p);
    connect(c_4_11.p,c_3_11.p);
    connect(c_4_11.n,c_5_11.p);
    connect(c_4_12.p,c_3_12.p);
    connect(c_4_12.n,c_5_12.p);
    connect(c_4_13.p,c_3_13.p);
    connect(c_4_13.n,c_5_13.p);
    connect(c_4_14.p,c_3_14.p);
    connect(c_4_14.n,c_5_14.p);
    connect(c_4_15.p,c_3_15.p);
    connect(c_4_15.n,c_5_15.p);
    connect(c_4_16.p,c_3_16.p);
    connect(c_4_16.n,c_5_16.p);
    connect(c_4_17.p,c_3_17.p);
    connect(c_4_17.n,c_5_17.p);
    connect(c_4_18.p,c_3_18.p);
    connect(c_4_18.n,c_5_18.p);
    connect(c_4_19.p,c_3_19.p);
    connect(c_4_19.n,c_5_19.p);
    connect(c_4_20.p,c_3_20.p);
    connect(c_4_20.n,c_5_20.p);
    connect(c_4_21.p,c_3_20.n);
    connect(c_4_21.n,c_5_20.n);
    connect(c_6_1.p,c_5_1.p);
    connect(c_6_1.n,c_7_1.p);
    connect(c_6_2.p,c_5_2.p);
    connect(c_6_2.n,c_7_2.p);
    connect(c_6_3.p,c_5_3.p);
    connect(c_6_3.n,c_7_3.p);
    connect(c_6_4.p,c_5_4.p);
    connect(c_6_4.n,c_7_4.p);
    connect(c_6_5.p,c_5_5.p);
    connect(c_6_5.n,c_7_5.p);
    connect(c_6_6.p,c_5_6.p);
    connect(c_6_6.n,c_7_6.p);
    connect(c_6_7.p,c_5_7.p);
    connect(c_6_7.n,c_7_7.p);
    connect(c_6_8.p,c_5_8.p);
    connect(c_6_8.n,c_7_8.p);
    connect(c_6_9.p,c_5_9.p);
    connect(c_6_9.n,c_7_9.p);
    connect(c_6_10.p,c_5_10.p);
    connect(c_6_10.n,c_7_10.p);
    connect(c_6_11.p,c_5_11.p);
    connect(c_6_11.n,c_7_11.p);
    connect(c_6_12.p,c_5_12.p);
    connect(c_6_12.n,c_7_12.p);
    connect(c_6_13.p,c_5_13.p);
    connect(c_6_13.n,c_7_13.p);
    connect(c_6_14.p,c_5_14.p);
    connect(c_6_14.n,c_7_14.p);
    connect(c_6_15.p,c_5_15.p);
    connect(c_6_15.n,c_7_15.p);
    connect(c_6_16.p,c_5_16.p);
    connect(c_6_16.n,c_7_16.p);
    connect(c_6_17.p,c_5_17.p);
    connect(c_6_17.n,c_7_17.p);
    connect(c_6_18.p,c_5_18.p);
    connect(c_6_18.n,c_7_18.p);
    connect(c_6_19.p,c_5_19.p);
    connect(c_6_19.n,c_7_19.p);
    connect(c_6_20.p,c_5_20.p);
    connect(c_6_20.n,c_7_20.p);
    connect(c_6_21.p,c_5_20.n);
    connect(c_6_21.n,c_7_20.n);
    connect(c_8_1.p,c_7_1.p);
    connect(c_8_1.n,c_9_1.p);
    connect(c_8_2.p,c_7_2.p);
    connect(c_8_2.n,c_9_2.p);
    connect(c_8_3.p,c_7_3.p);
    connect(c_8_3.n,c_9_3.p);
    connect(c_8_4.p,c_7_4.p);
    connect(c_8_4.n,c_9_4.p);
    connect(c_8_5.p,c_7_5.p);
    connect(c_8_5.n,c_9_5.p);
    connect(c_8_6.p,c_7_6.p);
    connect(c_8_6.n,c_9_6.p);
    connect(c_8_7.p,c_7_7.p);
    connect(c_8_7.n,c_9_7.p);
    connect(c_8_8.p,c_7_8.p);
    connect(c_8_8.n,c_9_8.p);
    connect(c_8_9.p,c_7_9.p);
    connect(c_8_9.n,c_9_9.p);
    connect(c_8_10.p,c_7_10.p);
    connect(c_8_10.n,c_9_10.p);
    connect(c_8_11.p,c_7_11.p);
    connect(c_8_11.n,c_9_11.p);
    connect(c_8_12.p,c_7_12.p);
    connect(c_8_12.n,c_9_12.p);
    connect(c_8_13.p,c_7_13.p);
    connect(c_8_13.n,c_9_13.p);
    connect(c_8_14.p,c_7_14.p);
    connect(c_8_14.n,c_9_14.p);
    connect(c_8_15.p,c_7_15.p);
    connect(c_8_15.n,c_9_15.p);
    connect(c_8_16.p,c_7_16.p);
    connect(c_8_16.n,c_9_16.p);
    connect(c_8_17.p,c_7_17.p);
    connect(c_8_17.n,c_9_17.p);
    connect(c_8_18.p,c_7_18.p);
    connect(c_8_18.n,c_9_18.p);
    connect(c_8_19.p,c_7_19.p);
    connect(c_8_19.n,c_9_19.p);
    connect(c_8_20.p,c_7_20.p);
    connect(c_8_20.n,c_9_20.p);
    connect(c_8_21.p,c_7_20.n);
    connect(c_8_21.n,c_9_20.n);
    connect(c_10_1.p,c_9_1.p);
    connect(c_10_1.n,c_11_1.p);
    connect(c_10_2.p,c_9_2.p);
    connect(c_10_2.n,c_11_2.p);
    connect(c_10_3.p,c_9_3.p);
    connect(c_10_3.n,c_11_3.p);
    connect(c_10_4.p,c_9_4.p);
    connect(c_10_4.n,c_11_4.p);
    connect(c_10_5.p,c_9_5.p);
    connect(c_10_5.n,c_11_5.p);
    connect(c_10_6.p,c_9_6.p);
    connect(c_10_6.n,c_11_6.p);
    connect(c_10_7.p,c_9_7.p);
    connect(c_10_7.n,c_11_7.p);
    connect(c_10_8.p,c_9_8.p);
    connect(c_10_8.n,c_11_8.p);
    connect(c_10_9.p,c_9_9.p);
    connect(c_10_9.n,c_11_9.p);
    connect(c_10_10.p,c_9_10.p);
    connect(c_10_10.n,c_11_10.p);
    connect(c_10_11.p,c_9_11.p);
    connect(c_10_11.n,c_11_11.p);
    connect(c_10_12.p,c_9_12.p);
    connect(c_10_12.n,c_11_12.p);
    connect(c_10_13.p,c_9_13.p);
    connect(c_10_13.n,c_11_13.p);
    connect(c_10_14.p,c_9_14.p);
    connect(c_10_14.n,c_11_14.p);
    connect(c_10_15.p,c_9_15.p);
    connect(c_10_15.n,c_11_15.p);
    connect(c_10_16.p,c_9_16.p);
    connect(c_10_16.n,c_11_16.p);
    connect(c_10_17.p,c_9_17.p);
    connect(c_10_17.n,c_11_17.p);
    connect(c_10_18.p,c_9_18.p);
    connect(c_10_18.n,c_11_18.p);
    connect(c_10_19.p,c_9_19.p);
    connect(c_10_19.n,c_11_19.p);
    connect(c_10_20.p,c_9_20.p);
    connect(c_10_20.n,c_11_20.p);
    connect(c_10_21.p,c_9_20.n);
    connect(c_10_21.n,c_11_20.n);
    connect(c_12_1.p,c_11_1.p);
    connect(c_12_1.n,c_13_1.p);
    connect(c_12_2.p,c_11_2.p);
    connect(c_12_2.n,c_13_2.p);
    connect(c_12_3.p,c_11_3.p);
    connect(c_12_3.n,c_13_3.p);
    connect(c_12_4.p,c_11_4.p);
    connect(c_12_4.n,c_13_4.p);
    connect(c_12_5.p,c_11_5.p);
    connect(c_12_5.n,c_13_5.p);
    connect(c_12_6.p,c_11_6.p);
    connect(c_12_6.n,c_13_6.p);
    connect(c_12_7.p,c_11_7.p);
    connect(c_12_7.n,c_13_7.p);
    connect(c_12_8.p,c_11_8.p);
    connect(c_12_8.n,c_13_8.p);
    connect(c_12_9.p,c_11_9.p);
    connect(c_12_9.n,c_13_9.p);
    connect(c_12_10.p,c_11_10.p);
    connect(c_12_10.n,c_13_10.p);
    connect(c_12_11.p,c_11_11.p);
    connect(c_12_11.n,c_13_11.p);
    connect(c_12_12.p,c_11_12.p);
    connect(c_12_12.n,c_13_12.p);
    connect(c_12_13.p,c_11_13.p);
    connect(c_12_13.n,c_13_13.p);
    connect(c_12_14.p,c_11_14.p);
    connect(c_12_14.n,c_13_14.p);
    connect(c_12_15.p,c_11_15.p);
    connect(c_12_15.n,c_13_15.p);
    connect(c_12_16.p,c_11_16.p);
    connect(c_12_16.n,c_13_16.p);
    connect(c_12_17.p,c_11_17.p);
    connect(c_12_17.n,c_13_17.p);
    connect(c_12_18.p,c_11_18.p);
    connect(c_12_18.n,c_13_18.p);
    connect(c_12_19.p,c_11_19.p);
    connect(c_12_19.n,c_13_19.p);
    connect(c_12_20.p,c_11_20.p);
    connect(c_12_20.n,c_13_20.p);
    connect(c_12_21.p,c_11_20.n);
    connect(c_12_21.n,c_13_20.n);
    connect(c_14_1.p,c_13_1.p);
    connect(c_14_1.n,c_15_1.p);
    connect(c_14_2.p,c_13_2.p);
    connect(c_14_2.n,c_15_2.p);
    connect(c_14_3.p,c_13_3.p);
    connect(c_14_3.n,c_15_3.p);
    connect(c_14_4.p,c_13_4.p);
    connect(c_14_4.n,c_15_4.p);
    connect(c_14_5.p,c_13_5.p);
    connect(c_14_5.n,c_15_5.p);
    connect(c_14_6.p,c_13_6.p);
    connect(c_14_6.n,c_15_6.p);
    connect(c_14_7.p,c_13_7.p);
    connect(c_14_7.n,c_15_7.p);
    connect(c_14_8.p,c_13_8.p);
    connect(c_14_8.n,c_15_8.p);
    connect(c_14_9.p,c_13_9.p);
    connect(c_14_9.n,c_15_9.p);
    connect(c_14_10.p,c_13_10.p);
    connect(c_14_10.n,c_15_10.p);
    connect(c_14_11.p,c_13_11.p);
    connect(c_14_11.n,c_15_11.p);
    connect(c_14_12.p,c_13_12.p);
    connect(c_14_12.n,c_15_12.p);
    connect(c_14_13.p,c_13_13.p);
    connect(c_14_13.n,c_15_13.p);
    connect(c_14_14.p,c_13_14.p);
    connect(c_14_14.n,c_15_14.p);
    connect(c_14_15.p,c_13_15.p);
    connect(c_14_15.n,c_15_15.p);
    connect(c_14_16.p,c_13_16.p);
    connect(c_14_16.n,c_15_16.p);
    connect(c_14_17.p,c_13_17.p);
    connect(c_14_17.n,c_15_17.p);
    connect(c_14_18.p,c_13_18.p);
    connect(c_14_18.n,c_15_18.p);
    connect(c_14_19.p,c_13_19.p);
    connect(c_14_19.n,c_15_19.p);
    connect(c_14_20.p,c_13_20.p);
    connect(c_14_20.n,c_15_20.p);
    connect(c_14_21.p,c_13_20.n);
    connect(c_14_21.n,c_15_20.n);
    connect(c_16_1.p,c_15_1.p);
    connect(c_16_1.n,c_17_1.p);
    connect(c_16_2.p,c_15_2.p);
    connect(c_16_2.n,c_17_2.p);
    connect(c_16_3.p,c_15_3.p);
    connect(c_16_3.n,c_17_3.p);
    connect(c_16_4.p,c_15_4.p);
    connect(c_16_4.n,c_17_4.p);
    connect(c_16_5.p,c_15_5.p);
    connect(c_16_5.n,c_17_5.p);
    connect(c_16_6.p,c_15_6.p);
    connect(c_16_6.n,c_17_6.p);
    connect(c_16_7.p,c_15_7.p);
    connect(c_16_7.n,c_17_7.p);
    connect(c_16_8.p,c_15_8.p);
    connect(c_16_8.n,c_17_8.p);
    connect(c_16_9.p,c_15_9.p);
    connect(c_16_9.n,c_17_9.p);
    connect(c_16_10.p,c_15_10.p);
    connect(c_16_10.n,c_17_10.p);
    connect(c_16_11.p,c_15_11.p);
    connect(c_16_11.n,c_17_11.p);
    connect(c_16_12.p,c_15_12.p);
    connect(c_16_12.n,c_17_12.p);
    connect(c_16_13.p,c_15_13.p);
    connect(c_16_13.n,c_17_13.p);
    connect(c_16_14.p,c_15_14.p);
    connect(c_16_14.n,c_17_14.p);
    connect(c_16_15.p,c_15_15.p);
    connect(c_16_15.n,c_17_15.p);
    connect(c_16_16.p,c_15_16.p);
    connect(c_16_16.n,c_17_16.p);
    connect(c_16_17.p,c_15_17.p);
    connect(c_16_17.n,c_17_17.p);
    connect(c_16_18.p,c_15_18.p);
    connect(c_16_18.n,c_17_18.p);
    connect(c_16_19.p,c_15_19.p);
    connect(c_16_19.n,c_17_19.p);
    connect(c_16_20.p,c_15_20.p);
    connect(c_16_20.n,c_17_20.p);
    connect(c_16_21.p,c_15_20.n);
    connect(c_16_21.n,c_17_20.n);
    connect(c_18_1.p,c_17_1.p);
    connect(c_18_1.n,c_19_1.p);
    connect(c_18_2.p,c_17_2.p);
    connect(c_18_2.n,c_19_2.p);
    connect(c_18_3.p,c_17_3.p);
    connect(c_18_3.n,c_19_3.p);
    connect(c_18_4.p,c_17_4.p);
    connect(c_18_4.n,c_19_4.p);
    connect(c_18_5.p,c_17_5.p);
    connect(c_18_5.n,c_19_5.p);
    connect(c_18_6.p,c_17_6.p);
    connect(c_18_6.n,c_19_6.p);
    connect(c_18_7.p,c_17_7.p);
    connect(c_18_7.n,c_19_7.p);
    connect(c_18_8.p,c_17_8.p);
    connect(c_18_8.n,c_19_8.p);
    connect(c_18_9.p,c_17_9.p);
    connect(c_18_9.n,c_19_9.p);
    connect(c_18_10.p,c_17_10.p);
    connect(c_18_10.n,c_19_10.p);
    connect(c_18_11.p,c_17_11.p);
    connect(c_18_11.n,c_19_11.p);
    connect(c_18_12.p,c_17_12.p);
    connect(c_18_12.n,c_19_12.p);
    connect(c_18_13.p,c_17_13.p);
    connect(c_18_13.n,c_19_13.p);
    connect(c_18_14.p,c_17_14.p);
    connect(c_18_14.n,c_19_14.p);
    connect(c_18_15.p,c_17_15.p);
    connect(c_18_15.n,c_19_15.p);
    connect(c_18_16.p,c_17_16.p);
    connect(c_18_16.n,c_19_16.p);
    connect(c_18_17.p,c_17_17.p);
    connect(c_18_17.n,c_19_17.p);
    connect(c_18_18.p,c_17_18.p);
    connect(c_18_18.n,c_19_18.p);
    connect(c_18_19.p,c_17_19.p);
    connect(c_18_19.n,c_19_19.p);
    connect(c_18_20.p,c_17_20.p);
    connect(c_18_20.n,c_19_20.p);
    connect(c_18_21.p,c_17_20.n);
    connect(c_18_21.n,c_19_20.n);
    connect(c_20_1.p,c_19_1.p);
    connect(c_20_1.n,c_21_1.p);
    connect(c_20_2.p,c_19_2.p);
    connect(c_20_2.n,c_21_2.p);
    connect(c_20_3.p,c_19_3.p);
    connect(c_20_3.n,c_21_3.p);
    connect(c_20_4.p,c_19_4.p);
    connect(c_20_4.n,c_21_4.p);
    connect(c_20_5.p,c_19_5.p);
    connect(c_20_5.n,c_21_5.p);
    connect(c_20_6.p,c_19_6.p);
    connect(c_20_6.n,c_21_6.p);
    connect(c_20_7.p,c_19_7.p);
    connect(c_20_7.n,c_21_7.p);
    connect(c_20_8.p,c_19_8.p);
    connect(c_20_8.n,c_21_8.p);
    connect(c_20_9.p,c_19_9.p);
    connect(c_20_9.n,c_21_9.p);
    connect(c_20_10.p,c_19_10.p);
    connect(c_20_10.n,c_21_10.p);
    connect(c_20_11.p,c_19_11.p);
    connect(c_20_11.n,c_21_11.p);
    connect(c_20_12.p,c_19_12.p);
    connect(c_20_12.n,c_21_12.p);
    connect(c_20_13.p,c_19_13.p);
    connect(c_20_13.n,c_21_13.p);
    connect(c_20_14.p,c_19_14.p);
    connect(c_20_14.n,c_21_14.p);
    connect(c_20_15.p,c_19_15.p);
    connect(c_20_15.n,c_21_15.p);
    connect(c_20_16.p,c_19_16.p);
    connect(c_20_16.n,c_21_16.p);
    connect(c_20_17.p,c_19_17.p);
    connect(c_20_17.n,c_21_17.p);
    connect(c_20_18.p,c_19_18.p);
    connect(c_20_18.n,c_21_18.p);
    connect(c_20_19.p,c_19_19.p);
    connect(c_20_19.n,c_21_19.p);
    connect(c_20_20.p,c_19_20.p);
    connect(c_20_20.n,c_21_20.p);
    connect(c_20_21.p,c_19_20.n);
    connect(c_20_21.n,c_21_20.n);
  end BaseCircuit;
model Electrical
  BaseCircuit bc;
end Electrical;
