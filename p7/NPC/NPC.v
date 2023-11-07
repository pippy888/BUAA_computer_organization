`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:03:39 11/06/2022 
// Design Name: 
// Module Name:    NPC 
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
module NPC(
	 input wire [31:0] PC,
    input wire [31:0] PC_D,
    input wire [3:0] NPCop,
    input wire [31:0] ExtImm,
    input wire [25:0] Imm26,
    input wire [31:0] RD1A,
	 input wire Req,
	 input wire [31:0] EPC,
	 input wire [31:0] EBase,
    output wire [31:0] PC8,
    output wire [31:0] NPC
    );

    assign NPC = (Req == 1'b0) ? ( 
								  (NPCop == 3'b001) ? (PC_D+4+(ExtImm<<2)):
                          (NPCop == 3'b010) ? {PC_D[31:28],Imm26,1'b0,1'b0} :
                          (NPCop == 3'b011) ? RD1A:
                          (NPCop == 3'b000) ? PC+4:
								  (NPCop == 3'b100) ? EPC + 4 : 
								  32'h0000_3000 
								  )
						: EBase ;
    assign PC8 = PC_D + 8;
endmodule