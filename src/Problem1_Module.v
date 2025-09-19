module f (
   out, A, B, C, D
);
    output out ;
    input A, B, C, D ;
    supply1 pwr ;
    supply0 gnd ;
    // PMOS wires
    wire a_not_d_not, a_not_b,  b_c,  b_not_d,  a_c,  c_d ;
    // NMOS wires 
    wire n1, n2, n3 ;
    //Pmos Network implementation
    pmos(a_not_d_not, pwr, ~A);
    pmos(out, a_not_d_not, ~D);
    pmos(a_not_b, pwr, ~A);
    pmos(b_c, a_not_b, B);
    pmos(out, b_c, ~C);
    pmos(b_not_d, pwr, ~B);
    pmos(out, b_not_d, D);
    pmos(a_c, pwr, A);
    pmos(c_d, a_c, C);
    pmos(out, c_d, D);
    //Nmos Network implementation
    nmos(out, n1, ~A);
    nmos(out, n1, ~D);
    nmos(n1, n2, ~A);
    nmos(n1, n2, B);
    nmos(n1, n2, ~C);
    nmos(n2, n3, ~B);
    nmos(n2, n3, D);
    nmos(n3, gnd, A);
    nmos(n3, gnd, C);
    nmos(n3, gnd, D);   
endmodule