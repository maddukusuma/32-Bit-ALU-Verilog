`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2026 10:05:08
// Design Name: 
// Module Name: tb_alu_32bit
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
module tb_alu_32bit;
reg [31:0] A;
reg [31:0] B;
reg [3:0] opcode;
wire [31:0] result;

alu_32bit dut(.A(A),.B(B),.opcode(opcode),.result(result));
initial
begin 
  A=10;
  B=5;
  opcode=4'b0000;#10;
  opcode=4'b0001;#10;
  opcode=4'b0010;#10;
  opcode=4'b0011;#10;
  opcode=4'b0100;#10;
  opcode=4'b0101;#10;
  opcode=4'b0110;#10;
  opcode=4'b0111;#10;
  opcode=4'b1000;#10;
  opcode=4'b1001;#10;
  opcode=4'b1010;#10;
  opcode=4'b1011;#10;
  opcode=4'b1100;#10;
  opcode=4'b1101;#10;
  opcode=4'b1110;#10;
  opcode=4'b1111;#10;
 
end 
endmodule
