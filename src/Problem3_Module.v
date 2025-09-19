module ALU (S,A, B, op

);
    output signed [7:0]  S;
    input signed [5:0] A,B;
    input [1:0] op;

    assign  S = op[1] ? (op[0] ? ((2 * A  - B) > 0 ? 2 * A - B : B - 2 * A) :  ~B +1) 
    : (op[0] ? A + 3 * B : (A <<< 2) + (B >>> 1) ) ;
    
endmodule