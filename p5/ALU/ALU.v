`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:00:02 11/06/2022 
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
`default_nettype none
module ALU(
    input wire[31:0] SRCA,
    input wire[31:0] SRCB,
    input wire[3:0] ALUop,
    output wire[31:0] ALUresult
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
endmodule