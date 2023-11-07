`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:33:32 10/27/2022 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] SRCA,
    input [31:0] SRCB,
    input [3:0] ALUop,
    output ZERO,
    output [31:0] ALUresult
    );
	
    reg [31:0] result;
	always@(*) begin
        case(ALUop)
        4'b0000:result = SRCA+SRCB;
        4'b0001:result = SRCA-SRCB;
        4'b0010:result = SRCA|SRCB;
        4'b0011:result = {SRCB[15:0],{16{1'b0}}}; 
        default:result = SRCA+SRCB;
        endcase // ALUop
    end

    assign ALUresult = result;
    assign ZERO = (SRCA == SRCB) ? 1'b1 :1'b0;
endmodule