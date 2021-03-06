`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:03:09 04/07/2016 
// Design Name: 
// Module Name:    aluCtrOut 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module aluCtrOut(
	aluOp,
	funct,
	aluCtr
    );
	 
	 
	input [1:0] aluOp;
	input [5:0] funct;
	output reg [3:0] aluCtr;
	
	always@ (aluOp or funct)
	casex ({aluOp,funct})
		8'b00xxxxxx: aluCtr = 4'b0010;
		8'b01xxxxxx: aluCtr = 4'b0110;
		8'b10xx0000: aluCtr = 4'b0010;
		8'b10xx0010: aluCtr = 4'b0110;
		8'b10xx0100: aluCtr = 4'b0000;
		8'b10xx0101: aluCtr = 4'b0001;
		8'b10xx1010: aluCtr = 4'b0111;
	endcase
endmodule
