`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:02:36 10/05/2022 
// Design Name: 
// Module Name:    p1_hw1_1 
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
module splitter(
    input [31:0] A,
    output [7:0] O4,
    output [15:8] O3,
    output [23:16] O2,
    output [31:24] O1
    );
	 assign O4 = A[7:0];
    assign O3 = A[15:8] ;
    assign O2 = A[23:16];
    assign O1 = A[31:24];

endmodule
