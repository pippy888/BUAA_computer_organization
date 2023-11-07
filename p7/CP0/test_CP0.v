`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:25:54 11/25/2022
// Design Name:   CP0
// Module Name:   D:/verilogcode/p7/CP0/test_CP0.v
// Project Name:  CP0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CP0
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_CP0;

	// Inputs
	reg clk;
	reg reset;
	reg en;
	reg [4:0] CP0Add;
	reg [31:0] CP0In;
	reg [31:0] VPC;
	reg BDIn;
	reg [5:0] HWInt;
	reg EXLClr;
	reg [4:0] ExcCodeIn;

	// Outputs
	wire [31:0] CP0Out;
	wire [31:0] EPCOut;
	wire Req;
	wire ResponseInt;

	// Instantiate the Unit Under Test (UUT)
	CP0 uut (
		.clk(clk), 
		.reset(reset), 
		.en(en), 
		.CP0Add(CP0Add), 
		.CP0In(CP0In), 
		.CP0Out(CP0Out), 
		.VPC(VPC), 
		.BDIn(BDIn), 
		.HWInt(HWInt), 
		.EXLClr(EXLClr), 
		.ExcCodeIn(ExcCodeIn), 
		.EPCOut(EPCOut), 
		.Req(Req), 
		.ResponseInt(ResponseInt)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		en = 0;
		CP0Add = 0;
		CP0In = 0;
		VPC = 0;
		BDIn = 0;
		HWInt = 0;
		EXLClr = 0;
		ExcCodeIn = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

