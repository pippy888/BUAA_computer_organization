`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:58:20 10/28/2022 
// Design Name: 
// Module Name:    OR 
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
module OR(
    input addu,
    input subu,
    input ori,
    input lui,
    input beq,
    input jal,
    input jr ,
    input lw,
    input sw,
    input ZERO,
	 input newin,
    output RegWrite,
    output [1:0] RegDst,
    output ALU_SRC,
    output MemRead,
    output [1:0] MemtoReg,
    output [3:0] ALUop,
    output [1:0] NPCop,
    output EXTop,
	 output newsign
    );
    
    assign MemtoReg = (lw == 1'b1) ? 2'b01 :
                        (jal == 1'b1) ? 2'b10 :
                        2'b00;
    assign MemRead = (sw == 1'b1)?1'b1:1'b0;
    assign NPCop = (beq == 1'b1&& ZERO == 1'b1) ? 2'b01 :
                    (jal == 1'b1) ? 2'b10:
                    (jr == 1'b1) ? 2'b11 :
                    2'b00;
    assign ALUop = (addu||sw||lw) ? 4'b0000:
                    (subu||beq) ? 4'b0001 :
                    (ori) ? 4'b0010 :
                    (lui) ? 4'b0011:
                    4'b0000;
    assign ALU_SRC = (ori||lw||sw||lui)?1'b1:1'b0;
    assign RegDst = (addu||subu) ? 2'b01:
                    (jal) ? 2'b10 :
                    2'b00;
    assign RegWrite = (addu||subu||ori||lui||jal||lw)?1'b1:1'b0;
    assign EXTop = (lw||sw||beq)?1'b1:1'b0;
	 assign newsign = newin;
endmodule
