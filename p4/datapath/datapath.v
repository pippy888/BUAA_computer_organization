`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:12 10/29/2022 
// Design Name: 
// Module Name:    datapath 
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
module datapath(
    input clk,
    input reset,
    input [1:0] MemtoReg,
    input MemRead,
    input ALU_SRC,
    input [3:0] ALUop,
    input [1:0] RegDst,
    input [1:0] NPCop,
    input RegWrite,
    input EXTop,
	 input newsign,
    output [5:0] Instruction_class,
    output [5:0] func,
    output ZERO
    );
    parameter [4:0] jrReg = 31;
    wire [31:0] PC;//PC register output
    wire [31:0] NPC;//NPC
    wire [31:0] PC4;//PC+4
    wire [31:0] Instruction;
    wire [4:0] rs;
    wire [4:0] rt;
    wire [4:0] rd;
	 wire [4:0] move;
    wire [15:0] imm16;
    wire [25:0] imm26;
    wire [31:0] Instruction_trans;
    wire [31:0] wd;
    wire [31:0] read1;
    wire [31:0] read2;
    wire [4:0] addr_w;
    wire [31:0] SRC_A;
    wire [31:0] SRC_B;
    wire [31:0] ExtImm16;
    wire [31:0] ALUresult;
    wire [31:0] MemOutput;
    PC  pc (
        .NPC(NPC), 
        .PC(PC), 
        .clk(clk), 
        .reset(reset)
    );

    NPC npc (
        .PC(PC), 
        .NPCop(NPCop), 
        .imm16(ExtImm16), 
        .imm26(imm26), //jal
        .RD1A(read1), //jr

        .PC4(PC4), //jal to $31 (RegDst)
        .NPC(NPC)
    );

    IM im (
        .PC(PC), 
        .Instruction(Instruction)
    );

    Splitter splitter (
        .Instruction(Instruction), 
        .Instruction_class(Instruction_class), 
        .func(func), 
        .rs(rs), 
        .rt(rt), 
        .move(move), 
        .rd(rd), 
        .imm16(imm16), 
        .imm26(imm26), 
        .Instruction_trans(Instruction_trans)
    );

     MUX_addr mux_addr (
        .addr1(rt), 
        .addr2(rd), 
        .addr3(jrReg), 
        .RegDst(RegDst), 
        .addr_w(addr_w)
    );

    GRF grf (
        .clk(clk), 
        .reset(reset), 
        .RegWrite(RegWrite), 
        .addr1(rs), 
        .addr2(rt), 
        .addr3(addr_w), 
        .wd(wd), 
        .WPC(PC), 

        .read1(read1), 
        .read2(read2)
    );

    Ext ext (
        .EXTop(EXTop), 
        .Imm(imm16), 

        .ExtImm(ExtImm16)
    );

    MUX_ALU mux_alu (
        .ALU_SRC(ALU_SRC), 
        .read2(read2), 
        .ExtImm16(ExtImm16), 

        .SRC_B(SRC_B)
    );
    assign SRC_A = read1;
   
    ALU alu (
        .SRCA(SRC_A), 
        .SRCB(SRC_B), 
        .ALUop(ALUop), 

        .ZERO(ZERO), 
        .ALUresult(ALUresult)
    );

    DM  dm (
        .AO(ALUresult), 
        .Read2(read2), 
        .MemRead(MemRead), 
        .reset(reset), 
        .clk(clk), 
        .MemtoReg(MemtoReg), 
        .PC(PC), 
        .MemOutput(MemOutput)
    );

    MUX_wd mux_wd (
        .AO(ALUresult), 
        .MemData(MemOutput), 
        .PC4(PC4), 
        .MemtoReg(MemtoReg), 
        .wd(wd)
    );
endmodule

