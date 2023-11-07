`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:49 10/05/2022 
// Design Name: 
// Module Name:    ext 
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
module ext(
    input [15:0] imm,
    input [1:0] EOp,
    output [31:0] ext
    );
	reg [31:0] ext_n; 
	always @(*) begin
		if(EOp == 2'b00)
			ext_n = {{16{imm[15]}},imm};
		else if(EOp == 2'b01)
			ext_n = {{16{1'b0}},imm};
		else if(EOp == 2'b10)
			ext_n = {imm,{16{1'b0}}};
		else 
			begin
				ext_n = {{16{imm[15]}},imm};
				ext_n = ext_n << 2;
			end
	end
	
	assign ext = ext_n;
endmodule
