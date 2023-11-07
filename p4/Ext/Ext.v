`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:56:22 10/28/2022 
// Design Name: 
// Module Name:    Ext 
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
module Ext(
    input EXTop,
    input [15:0] Imm,
    output [31:0] ExtImm
    );
	 
    assign ExtImm = (EXTop == 1'b1) ? {{16{Imm[15]}},Imm} : {{16{1'b0}},Imm};
endmodule