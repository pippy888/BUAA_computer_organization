`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:19:28 11/09/2022 
// Design Name: 
// Module Name:    bitadder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bitadder(
    input [31:0] num,
    output [5:0] numout
    );
	 reg [5:0] count;
	 integer i;
	 always @(*) begin//¼ÆÊýÆ÷
			count = 0;
			for(i=0;i<32;i=i+1) begin
				if(num[i]==1'b1) begin
					count = count + 1;
				end
			end
	 end
	 
	 assign numout = count;

endmodule
