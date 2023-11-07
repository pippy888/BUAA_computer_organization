`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:29:18 11/08/2022 
// Design Name: 
// Module Name:    MOVEBIT 
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
module MOVEBIT(
    input [31:0] read1,
    input [15:0] imm16,
    output [31:0] moveout
    );
	 
	 reg [5:0] count;
	 reg [31:0] moveout_n;
	 reg [31:0] moveout_m;
	 integer i;
	 integer j;
	 always @(*) begin//¼ÆÊýÆ÷
			count = 0;
			for(i=0;i<16;i=i+1) begin
				if(imm16[i]==1'b1) begin
					count = count + 1;
				end
			end
	 end
	 
	 always @(*) begin
			if(count == 0) begin
				moveout_m = read1;
			end
			else if(count<32) begin
				 for(j=0;j<31;j=j+1) begin
						if(j<count) begin
							moveout_n[31-j] = ~read1[31-j];
						end
						else begin
							moveout_n[31-j] = read1[31-j];
						end
				 end
				 moveout_m = $signed(moveout_n)>>>count;
			end
			else begin
				moveout_n = ~read1;
				moveout_m = $signed(moveout_n)>>>count;
			end
	 end
	
	assign moveout = moveout_m;
endmodule
