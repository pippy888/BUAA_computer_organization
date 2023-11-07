`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:32:08 11/06/2022
// Design Name:   PC
// Module Name:   D:/verilogcode/p5/PC/test_PC.v
// Project Name:  PC
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_PC;

	// Inputs
	reg [31:0] NPC;
	reg En_PC;
	reg clk;
	reg reset;

	// Outputs
	wire [31:0] PC;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.NPC(NPC), 
		.En_PC(En_PC), 
		.PC(PC), 
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		NPC = 0;
		En_PC = 0;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

