`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:58:05 10/29/2022
// Design Name:   DM
// Module Name:   D:/verilogcode/p4/DM/test_DM.v
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
	reg [31:0] AO;
	reg [31:0] Read2;
	reg MemRead;
	reg reset;
	reg clk;
	reg MemtoReg;
	reg [31:0]PC;

	// Outputs
	wire [31:0] MemOutput;

	// Instantiate the Unit Under Test (UUT)
	DM uut (
		.AO(AO), 
		.Read2(Read2), 
		.MemRead(MemRead), 
		.reset(reset), 
		.clk(clk), 
		.MemtoReg(MemtoReg), 
		.PC(PC), 
		.MemOutput(MemOutput)
	);
	always #1 clk = ~clk;
	initial begin
		// Initialize Inputs
		AO = 0;
		Read2 = 0;
		MemRead = 0;
		reset = 1;
		clk = 0;
		MemtoReg = 0;
		PC = 8;

		// Wait 100 ns for global reset to finish
		#100;
      AO = 12;
		Read2 = 56;
		MemRead = 0;
		reset = 0;
		MemtoReg = 0;
		PC = 4;  
		#2
		AO = 48;
		Read2 = 56;
		MemRead = 1;
		reset = 0;
		MemtoReg = 0;
		PC = 4; 
		#2
		AO = 12;
		Read2 = 11;
		MemRead = 1;
		reset = 0;
		MemtoReg = 0;
		PC = 8; 
		#2 
		MemRead = 0;
			// Add stimulus here


	end
      
endmodule

