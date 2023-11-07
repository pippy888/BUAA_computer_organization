`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:00:22 11/09/2022 
// Design Name: 
// Module Name:    lowbit 
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
module lowbit(
    input [31:0] numin,
    output reg [5:0] numout
    );
	
	 wire [31:0] select;
	 assign select = (-numin)&numin;
	always @(*) begin
			case(select)
				32'h00000000:numout = 0;
				32'h00000001:numout = 1;
				32'h00000002:numout = 2;
				32'h00000004:numout = 3;
				32'h00000008:numout = 4;
				32'h00000010:numout = 5;
				32'h00000020:numout = 6;
				32'h00000040:numout = 7;
				32'h00000080:numout = 8;
				32'h00000100:numout = 9;
				32'h00000200:numout = 10;
				32'h00000400:numout = 11;
				32'h00000800:numout = 12;
				32'h00001000:numout = 13;
				32'h00002000:numout = 14;
				32'h00004000:numout = 15;
				32'h00008000:numout = 16;
				32'h00010000:numout = 17;
				32'h00020000:numout = 18;
				32'h00040000:numout = 19;
				32'h00080000:numout = 20;
				32'h00100000:numout = 21;
				32'h00200000:numout = 22;
				32'h00400000:numout = 23;
				32'h00800000:numout = 24;
				32'h01000000:numout = 25;
				32'h02000000:numout = 26;
				32'h04000000:numout = 27;
				32'h08000000:numout = 28;
				32'h10000000:numout = 29;
				32'h20000000:numout = 30;
				32'h40000000:numout = 31;
				32'h80000000:numout = 32;
			endcase
	end
	

endmodule
