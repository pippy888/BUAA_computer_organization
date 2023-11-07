`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:53 11/06/2022 
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
	input wire [4:0] addr1,
	input wire [4:0] addr2,
	input wire [4:0] addr3,
	input wire [3:0] RegDst,
	output wire [4:0] addr_w
    );

	assign addr_w = (RegDst == 2'b00) ? addr1 :
					(RegDst == 2'b01) ? addr2 :
					(RegDst == 2'b10) ? addr3 :
					5'b00000;
endmodule

module MUX_ALU(
	input wire [3:0] ALU_SRC,
	input wire [31:0] read2,
	input wire [31:0] ExtImm16,
	output wire [31:0] SRC_B
);
	assign SRC_B = (ALU_SRC == 3'b001) ? ExtImm16 :read2;

endmodule

module MUX_Wd (
	input wire [31:0] ALUresult,
	input wire [31:0] MemData,
	input wire [31:0] PC8,
	input wire [3:0] MemtoReg,
	output wire [31:0] Wd
);
	
	assign Wd = (MemtoReg == 2'b00) ? ALUresult :
				(MemtoReg == 2'b01) ? MemData :
				(MemtoReg == 2'b10) ? PC8 : 
				1'b0;
endmodule

module MUX_Forward_D_E(
	input wire [31:0] Original,
	input wire [31:0] Mresult,
	input wire [31:0] Wresult,
	input wire [31:0] PC8_E,//同样是改变寄存器的值，jal的值跟其他的都不一样！需要单独给个口子，w级不需要转发
	input wire [31:0] PC8_M,
	input wire [3:0] MuxForward,
	output wire [31:0] MUXResult
);
	assign MUXResult = (MuxForward == 4'b0100) ? PC8_E :
						(MuxForward == 4'b0011) ? PC8_M :
						(MuxForward == 4'b0010) ? Mresult :
					   (MuxForward == 4'b0001) ? Wresult :
					   (MuxForward == 4'b0000) ? Original:
					   32'hffffffff;

endmodule

module MUX_Forward_M(
	input wire [31:0] Original,
	input wire [31:0] Wresult,
	input  wire MuxForward,
	output wire [31:0] MUXResult
);
	assign MUXResult = (MuxForward == 1'b1) ? Wresult :
					   						  Original;

endmodule



module MUX_PC(
	input wire [31:0] PC_Add4,
	input wire [31:0] NPC_D,
	input wire Initial,
	output wire [31:0] NPC
);
	assign NPC = (Initial == 1'b1) ? PC_Add4 : NPC_D;

endmodule