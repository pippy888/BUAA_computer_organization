`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:06:19 10/05/2022
// Design Name:   p1_hw1_1
// Module Name:   D:/verilogcode/p1_hw1_1/p1_hw1_1tb.v
// Project Name:  p1_hw1_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: p1_hw1_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module splitter;

	// Inputs
	reg [31:0] A;

	// Outputs
	wire [7:0] O4;
	wire [15:8] O3;
	wire [23:16] O2;
	wire [31:24] O1;

	// Instantiate the Unit Under Test (UUT)
	p1_hw1_1 uut (
		.A(A), 
		.O4(O4), 
		.O3(O3), 
		.O2(O2), 
		.O1(O1)
	);

	initial begin
		// Initialize Inputs
		A = 0;

		// Wait 100 ns for global reset to finish
		#100;
		A = 32'b10000000_00001000_00100000_00000010;
		#2
		A = 32'b00001000_00100000_00000100_00010000;
		#2
		A = 32'b00010000_01000000_00000010_10000000;
        
		// Add stimulus here

	end
      
endmodule

