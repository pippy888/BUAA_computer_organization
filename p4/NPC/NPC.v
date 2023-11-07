`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:51:26 10/28/2022 
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
    input [31:0] PC,
    input [1:0] NPCop,
    input [31:0] imm16,
    input [25:0] imm26,
    input [31:0] RD1A,
    output [31:0] PC4,
    output [31:0] NPC
    );

    assign NPC = (NPCop == 2'b01) ? (PC+4+(imm16<<2)):
                          (NPCop == 2'b10) ? {PC[31:28],imm26,1'b0,1'b0} :
                          (NPCop == 2'b11) ? RD1A:
                          (NPCop == 2'b00) ? PC+4:32'h0000_3000;
    assign PC4 = PC + 4;
endmodule