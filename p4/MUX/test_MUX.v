`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:01:36 10/29/2022
// Design Name:   MUX_ALU
// Module Name:   D:/verilogcode/p4/MUX/test_MUX.v
// Project Name:  MUX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_MUX;

	// Inputs
	reg ALU_SRC;
	reg [31:0] read2;
	reg [31:0] ExtImm16;

	// Outputs
	wire [31:0] SRC_B;

	// Instantiate the Unit Under Test (UUT)
	MUX_ALU uut (
		.ALU_SRC(ALU_SRC), 
		.read2(read2), 
		.ExtImm16(ExtImm16), 
		.SRC_B(SRC_B)
	);

	initial begin
		// Initialize Inputs
		ALU_SRC = 0;
		read2 = 0;
		ExtImm16 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

