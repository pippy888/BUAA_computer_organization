`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:58:13 10/29/2022
// Design Name:   GRF
// Module Name:   D:/verilogcode/p4/GRF.v/test_DRF.v
// Project Name:  GRF.v
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

module test_DRF;

	// Inputs
	reg clk;
	reg reset;
	reg RegWrite;
	reg [4:0] addr1;
	reg [4:0] addr2;
	reg [4:0] addr3;
	reg [31:0] wd;
	reg [31:0] WPC;

	// Outputs
	wire [31:0] read1;
	wire [31:0] read2;

	// Instantiate the Unit Under Test (UUT)
	GRF uut (
		.clk(clk), 
		.reset(reset), 
		.RegWrite(RegWrite), 
		.addr1(addr1), 
		.addr2(addr2), 
		.addr3(addr3), 
		.wd(wd), 
		.WPC(WPC), 
		.read1(read1), 
		.read2(read2)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		RegWrite = 0;
		addr1 = 0;
		addr2 = 0;
		addr3 = 0;
		wd = 0;
		WPC = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

