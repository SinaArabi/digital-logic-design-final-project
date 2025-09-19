`include "Arabi.Sina.400243058.Problem3.v"
module Q3_tb();

    reg signed [5:0] A, B;
    reg [1:0] C;
    wire signed [7:0]  out;
    ALU ALU(out,A, B, C);

    initial begin
        A = 6'b001010;
        B = 6'b001101;
        C = 2'b00;
    #20;
        A = 6'b001010;
        B = 6'b001101;
        C = 2'b01;
    #20;
        A = 6'b001010;
        B = 6'b001101;
        C = 2'b10;
    #20;
        A = 6'b001010;
        B = 6'b001101;
        C = 2'b11;
    #20;
        A = 6'b000011;
        B = 6'b011111;
        C = 2'b00;
    #20;  
        A = 6'b000011;
        B = 6'b011111;
        C = 2'b01;
    #20;  
        A = 6'b000011;
        B = 6'b011111;
        C = 2'b10;
    #20;  
        A = 6'b000011;
        B = 6'b011111;
        C = 2'b11;
    #20;  

    end
endmodule
