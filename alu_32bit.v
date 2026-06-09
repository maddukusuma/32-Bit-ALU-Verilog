
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2026 08:39:37
// Design Name: 
// Module Name: alu_32bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps
module alu_32bit(
input[31:0]A,
input[31:0]B,
input[3:0]opcode,
output reg [31:0] result
);
always @(*)
begin
    case(opcode)
        //Arithematic Operations
        4'b0000:result=A+B;
        4'b0001:result=A-B;
        
        //Logical Operations
        4'b0010:result=A&B;
        4'b0011:result=A|B;
        4'b0100:result=A^B;
        4'b0101:result=~(A&B);
        4'b0110:result=~(A|B);
        4'b0111:result=~(A^B);
        
        //Shift operations
        4'b1000:result=A<<1;
        4'b1001:result=A>>1;
        
        //Comparison Operations
        4'b1010:result=(A>B)? 32'd1:32'd0;
        4'b1011:result=(A<B)? 32'd1:32'd0;
        4'b1100:result=(A==B)? 32'd1:32'd0;
        
        //Increment Decrement
        4'b1101:result=(A+1);
        4'b1110:result=(A-1);
        
        //Unary operation
        4'b1111:result=~A;  
        default:result=32'd0;
     endcase
end
endmodule
