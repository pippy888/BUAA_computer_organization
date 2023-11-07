`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:15:07 11/06/2022
// Design Name:   EXT
// Module Name:   D:/verilogcode/p5/EXT/test_EXT.v
// Project Name:  EXT
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: EXT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_EXT;

	// Inputs
	reg EXTop;
	reg [15:0] Imm;

	// Outputs
	wire [31:0] ExtImm;

	// Instantiate the Unit Under Test (UUT)
	EXT uut (
		.EXTop(EXTop), 
		.Imm(Imm), 
		.ExtImm(ExtImm)
	);

	initial begin
		// Initialize Inputs
		EXTop = 0;
		Imm = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

