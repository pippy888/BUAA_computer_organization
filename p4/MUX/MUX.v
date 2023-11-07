`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:07:38 10/28/2022 
// Design Name: 
// Module Name:    MUX 
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
module MUX_addr(
	input [4:0] addr1,
	input [4:0] addr2,
	input [4:0] addr3,
	input [1:0] RegDst,
	output [4:0] addr_w
    );

	assign addr_w = (RegDst == 2'b00) ? addr1 :
					(RegDst == 2'b01) ? addr2 :
					(RegDst == 2'b10) ? addr3 :
					5'b00000;
endmodule

module MUX_ALU(
	input ALU_SRC,
	input [31:0] read2,
	input [31:0] ExtImm16,
	output [31:0] SRC_B
);
	assign SRC_B = (ALU_SRC == 1'b1) ? ExtImm16 :read2;

endmodule

module MUX_wd (
	input [31:0] AO,
	input [31:0] MemData,
	input [31:0] PC4,
	input [1:0] MemtoReg,
	output [31:0] wd
);
	
	assign wd = (MemtoReg == 2'b00) ? AO :
				(MemtoReg == 2'b01) ? MemData :
				(MemtoReg == 2'b10) ? PC4 : 
				1'b0;
endmodule