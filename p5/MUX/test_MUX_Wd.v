`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:29:52 11/06/2022
// Design Name:   MUX_Wd
// Module Name:   D:/verilogcode/p5/MUX/test_MUX_Wd.v
// Project Name:  MUX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_Wd
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_MUX_Wd;

	// Inputs
	reg [31:0] ALUresult;
	reg [31:0] MemData;
	reg [31:0] PC8;
	reg [1:0] MemtoReg;

	// Outputs
	wire [31:0] Wd;

	// Instantiate the Unit Under Test (UUT)
	MUX_Wd uut (
		.ALUresult(ALUresult), 
		.MemData(MemData), 
		.PC8(PC8), 
		.MemtoReg(MemtoReg), 
		.Wd(Wd)
	);

	initial begin
		// Initialize Inputs
		ALUresult = 0;
		MemData = 0;
		PC8 = 0;
		MemtoReg = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

