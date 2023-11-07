`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:33:19 10/28/2022 
// Design Name: 
// Module Name:    AND_control 
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
module AND_control(
    input [5:0] Instruction_class,
    input [5:0] func,
    output addu,
    output subu,
    output ori,
    output lui,
    output beq,
    output jal,
    output jr,
    output sw,
    output lw,
	 output newin
    );
    
    assign addu = (Instruction_class == 6'b000000 && func == 6'b100000) ? 1'b1 :1'b0;
    assign subu = (Instruction_class == 6'b000000 && func == 6'b100010) ? 1'b1 :1'b0;
    assign lw = (Instruction_class == 6'b100011) ? 1'b1 :1'b0;
    assign sw = (Instruction_class == 6'b101011) ? 1'b1:1'b0;
    assign beq = (Instruction_class == 6'b000100) ? 1'b1:1'b0;
    assign lui = (Instruction_class == 6'b001111) ? 1'b1:1'b0;
    assign ori = (Instruction_class == 6'b001101) ? 1'b1:1'b0;
    assign jal = (Instruction_class == 6'b000011) ? 1'b1:1'b0;
    assign jr = (Instruction_class == 6'b000000 && func == 6'b001000) ? 1'b1:1'b0;
	 assign newin = (Instruction_class == 6'b111111)  ? 1'b1:1'b0;
endmodule