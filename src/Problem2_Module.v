module adder_1bit (
    input x, y, Cin 
    output S, Cout   
);
    wire x_not, y_not, Cin_not ; 
    not(x_not, x);
    not(y_not, y);
    not(Cin_not, Cin);
    xor(S, x, y, Cin);
    wire n0, n1, n2 ;
    and(n0, x, Cin);
    and(n1, y, Cin);
    and(n2 ,x, y);
    or(Cout, n0, n1, n2);

endmodule