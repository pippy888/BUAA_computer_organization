`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:30:04 11/06/2022
// Design Name:   MUX_addr
// Module Name:   D:/verilogcode/p5/MUX/test_MUX_addr.v
// Project Name:  MUX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_addr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_MUX_addr;

	// Inputs
	reg [4:0] addr1;
	reg [4:0] addr2;
	reg [4:0] addr3;
	reg [1:0] RegDst;

	// Outputs
	wire [4:0] addr_w;

	// Instantiate the Unit Under Test (UUT)
	MUX_addr uut (
		.addr1(addr1), 
		.addr2(addr2), 
		.addr3(addr3), 
		.RegDst(RegDst), 
		.addr_w(addr_w)
	);

	initial begin
		// Initialize Inputs
		addr1 = 0;
		addr2 = 0;
		addr3 = 0;
		RegDst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

