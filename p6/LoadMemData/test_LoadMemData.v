`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:43:01 11/10/2022
// Design Name:   LoadMemData
// Module Name:   D:/verilogcode/p6/LoadMemData/test_LoadMemData.v
// Project Name:  LoadMemData
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LoadMemData
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_LoadMemData;

	// Inputs
	reg [31:0] MemOutput_pre;
	reg [31:0] ALUresult_M;
	reg [3:0] Loadop;

	// Outputs
	wire [31:0] MemOutput;

	// Instantiate the Unit Under Test (UUT)
	LoadMemData uut (
		.MemOutput_pre(MemOutput_pre), 
		.ALUresult_M(ALUresult_M), 
		.Loadop(Loadop), 
		.MemOutput(MemOutput)
	);

	initial begin
		// Initialize Inputs
		MemOutput_pre = 0;
		ALUresult_M = 0;
		Loadop = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

