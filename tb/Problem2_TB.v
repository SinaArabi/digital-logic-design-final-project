`include "P2.v"
module P2_tb;
       reg [3:0]A;
       reg [3:0]B;
       reg cin;
       wire cout;
       wire [3:0]sum;
       wire overflow;
       P2 result (A,B,cin,cout,sum,overflow);

       initial begin
               A=0;
               B=0;
               #20;
               A=4'b0001;
               B=4'b0010;
               #20;
               A=4'b0111;
               B=4'b0110;
               #20;
               A=4'b1110;
               B=4'b1101;
               #20;
               A=4'b1100;
               B=4'b1111;
               
       end
endmodule