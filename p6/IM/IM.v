`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:02:25 11/06/2022 
// Design Name: 
// Module Name:    IM 
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
`define MAXSIZE_IM 4096
module IM(
    input [31:0] PC,
    output [31:0] Instruction
    );
    
    integer i;
	 reg [31:0] PC_n;
    reg [31:0] IMROM [`MAXSIZE_IM-1:0];
    initial begin
        for(i=0;i<`MAXSIZE_IM;i=i+1) begin
            IMROM[i] = 32'b0;
        end
        $readmemh("code.txt",IMROM);
    end

	 always @(*) begin
		PC_n = PC - 32'h0000_3000;
	 end
    assign Instruction = IMROM[PC_n[13:2]];
endmodule