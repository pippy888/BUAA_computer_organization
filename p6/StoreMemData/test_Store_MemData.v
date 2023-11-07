`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:29:20 11/10/2022
// Design Name:   Store_MemData
// Module Name:   D:/verilogcode/p6/StoreMemData/test_Store_MemData.v
// Project Name:  StoreMemData
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Store_MemData
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_Store_MemData;

	// Inputs
	reg [31:0] Read2_M;
	reg [3:0] m_data_byteen;

	// Outputs
	wire [31:0] m_data_wdata;

	// Instantiate the Unit Under Test (UUT)
	Store_MemData uut (
		.Read2_M(Read2_M), 
		.m_data_byteen(m_data_byteen), 
		.m_data_wdata(m_data_wdata)
	);

	initial begin
		// Initialize Inputs
		Read2_M = 0;
		m_data_byteen = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

