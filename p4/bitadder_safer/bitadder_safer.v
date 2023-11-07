`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:29:56 11/09/2022 
// Design Name: 
// Module Name:    bitadder_safer 
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
module bitadder_safer(
    input [31:0] numin,
    output [5:0] numout
    );
	
	 assign numout = numin[0] + numin[1]+ numin[2] + numin[3]+
	 numin[4] + numin[5]+ numin[6] + numin[7]+
	 numin[8] + numin[9]+ numin[10] + numin[11]+
	 numin[12] + numin[13]+ numin[14] + numin[15]+
	 numin[16] + numin[17]+ numin[18] + numin[19]+
	 numin[20] + numin[21]+ numin[22] + numin[23]+
	 numin[24] + numin[25]+ numin[26] + numin[27]+
	 numin[28] + numin[29]+ numin[30] + numin[31];
endmodule
