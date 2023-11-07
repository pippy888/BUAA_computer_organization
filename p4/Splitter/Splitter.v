`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:18:04 10/28/2022 
// Design Name: 
// Module Name:    Splitter 
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
module Splitter(
    input [31:0] Instruction,
    output [5:0] Instruction_class,
    output [5:0] func,
    output [4:0] rs,
    output [4:0] rt,
    output [4:0] move,
    output [4:0] rd,
    output [15:0] imm16,
    output [25:0] imm26,
    output [31:0] Instruction_trans//
    );
    
    assign Instruction_class = Instruction[31:26];
    assign rs = Instruction[25:21];
    assign rt = Instruction[20:16];
    assign rd = Instruction[15:11];
    assign move = Instruction[10:6];
    assign func = Instruction[5:0];
    assign imm16 = Instruction[15:0];
    assign imm26 = Instruction[25:0];
    assign Instruction_trans = Instruction;
endmodule