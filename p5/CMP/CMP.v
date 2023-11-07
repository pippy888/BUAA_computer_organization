`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:00:28 11/06/2022 
// Design Name: 
// Module Name:    CMP 
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
`default_nettype none
module CMP(
    input wire [31:0] CMP1,
    input wire[31:0] CMP2,
    output wire CMP_Output
    );

    assign CMP_Output = (CMP1 == CMP2) ? 1'b1 : 1'b0;
endmodule