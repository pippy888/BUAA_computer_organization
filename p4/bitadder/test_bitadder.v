`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:21:02 11/09/2022
// Design Name:   bitadder
// Module Name:   D:/verilogcode/p4/bitadder/test_bitadder.v
// Project Name:  bitadder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bitadder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_bitadder;

	// Inputs
	reg [31:0] num;

	// Outputs
	wire [5:0] numout;

	// Instantiate the Unit Under Test (UUT)
	bitadder uut (
		.num(num), 
		.numout(numout)
	);

	initial begin
		// Initialize Inputs
		num = 0;

		// Wait 100 ns for global reset to finish
		#100;
		num = 32'hffffffff;
		#1
		num = 32'hfffffffe;
		#1
		num = 32'hfffffffd;
		#1
		num = 32'hfffffffc;
        
		// Add stimulus here

	end
      
endmodule

