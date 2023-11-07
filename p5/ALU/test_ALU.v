`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:11:42 11/06/2022
// Design Name:   ALU
// Module Name:   D:/verilogcode/p5/ALU/test_ALU.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_ALU;

	// Inputs
	reg [31:0] SRCA;
	reg [31:0] SRCB;
	reg [3:0] ALUop;

	// Outputs
	wire [31:0] ALUresult;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.SRCA(SRCA), 
		.SRCB(SRCB), 
		.ALUop(ALUop), 
		.ALUresult(ALUresult)
	);

	initial begin
		// Initialize Inputs
		SRCA = 0;
		SRCB = 0;
		ALUop = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

