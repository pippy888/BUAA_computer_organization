`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:02:01 11/06/2022 
// Design Name: 
// Module Name:    EXT 
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

module EXT(
    input wire EXTop,
    input wire [15:0] Imm,
    output wire [31:0] ExtImm
    );
	 
    assign ExtImm = (EXTop == 1'b1) ? {{16{Imm[15]}},Imm} : {{16{1'b0}},Imm};
endmodule