`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:13:47 11/10/2022
// Design Name:   MDU
// Module Name:   D:/verilogcode/p6/MDU/test_MDU.v
// Project Name:  MDU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MDU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_MDU;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] MDU_num1;
	reg [31:0] MDU_num2;
	reg start;
	reg [5:0] MDUop;

	// Outputs
	wire busy;
	wire [31:0] HI;
	wire [31:0] LO;

	// Instantiate the Unit Under Test (UUT)
	MDU uut (
		.clk(clk), 
		.reset(reset), 
		.MDU_num1(MDU_num1), 
		.MDU_num2(MDU_num2), 
		.start(start), 
		.MDUop(MDUop), 
		.busy(busy), 
		.HI(HI), 
		.LO(LO)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		MDU_num1 = 0;
		MDU_num2 = 0;
		start = 0;
		MDUop = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

