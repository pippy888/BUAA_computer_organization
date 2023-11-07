`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:12:53 11/06/2022
// Design Name:   GRF
// Module Name:   D:/verilogcode/p5/GRF/test_GRF.v
// Project Name:  GRF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GRF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_GRF;

	// Inputs
	reg clk;
	reg reset;
	reg RegWrite;
	reg [4:0] Addr1;
	reg [4:0] Addr2;
	reg [4:0] Addr3;
	reg [31:0] Wd;
	reg [31:0] PC_D;

	// Outputs
	wire [31:0] Read1;
	wire [31:0] Read2;

	// Instantiate the Unit Under Test (UUT)
	GRF uut (
		.clk(clk), 
		.reset(reset), 
		.RegWrite(RegWrite), 
		.Addr1(Addr1), 
		.Addr2(Addr2), 
		.Addr3(Addr3), 
		.Wd(Wd), 
		.PC_D(PC_D), 
		.Read1(Read1), 
		.Read2(Read2)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		RegWrite = 0;
		Addr1 = 0;
		Addr2 = 0;
		Addr3 = 0;
		Wd = 0;
		PC_D = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

