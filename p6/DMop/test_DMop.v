`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:34:50 11/10/2022
// Design Name:   DMop
// Module Name:   D:/verilogcode/p6/DMop/test_DMop.v
// Project Name:  DMop
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DMop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_DMop;

	// Inputs
	reg [31:0] Instruction_M;
	reg [31:0] ALUresult_M;

	// Outputs
	wire [3:0] m_data_byteen;
	wire [3:0] Loadop;

	// Instantiate the Unit Under Test (UUT)
	DMop uut (
		.Instruction_M(Instruction_M), 
		.ALUresult_M(ALUresult_M), 
		.m_data_byteen(m_data_byteen), 
		.Loadop(Loadop)
	);

	initial begin
		// Initialize Inputs
		Instruction_M = 0;
		ALUresult_M = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

