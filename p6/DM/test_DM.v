`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:14:11 11/06/2022
// Design Name:   DM
// Module Name:   D:/verilogcode/p5/DM/test_DM.v
// Project Name:  DM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_DM;

	// Inputs
	reg [31:0] ALUresult;
	reg [31:0] Read2;
	reg MemRead;
	reg reset;
	reg clk;
	reg [1:0] MemtoReg;
	reg [31:0] PC;

	// Outputs
	wire [31:0] MemOutput;

	// Instantiate the Unit Under Test (UUT)
	DM uut (
		.ALUresult(ALUresult), 
		.Read2(Read2), 
		.MemRead(MemRead), 
		.reset(reset), 
		.clk(clk), 
		.MemtoReg(MemtoReg), 
		.PC(PC), 
		.MemOutput(MemOutput)
	);

	initial begin
		// Initialize Inputs
		ALUresult = 0;
		Read2 = 0;
		MemRead = 0;
		reset = 0;
		clk = 0;
		MemtoReg = 0;
		PC = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

