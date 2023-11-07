`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:30:41 11/06/2022
// Design Name:   MUX_Forward_M
// Module Name:   D:/verilogcode/p5/MUX/test_MUX_Forward_M.v
// Project Name:  MUX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_Forward_M
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_MUX_Forward_M;

	// Inputs
	reg [31:0] Original;
	reg [31:0] Wresult;
	reg MuxForward;

	// Outputs
	wire [31:0] MUXResult;

	// Instantiate the Unit Under Test (UUT)
	MUX_Forward_M uut (
		.Original(Original), 
		.Wresult(Wresult), 
		.MuxForward(MuxForward), 
		.MUXResult(MUXResult)
	);

	initial begin
		// Initialize Inputs
		Original = 0;
		Wresult = 0;
		MuxForward = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

