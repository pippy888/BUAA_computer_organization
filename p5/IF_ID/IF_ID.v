`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:24:57 11/03/2022 
// Design Name: 
// Module Name:    IF_ID 
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
module IF_ID(
    input wire[31:0] Instruction_F,
    input wire[31:0] PC_F,
    input wire clk,
    input wire reset,
    input wire En_D,
    output reg [31:0] PC_D,
    output reg [31:0] Instruction_D
    );
    
    always @(posedge clk) begin
        if(reset) begin
            PC_D <= 0;
            Instruction_D <= 0;
        end
        else if(En_D) begin
            PC_D <= PC_F;
            Instruction_D <= Instruction_F;
        end
        else begin
            PC_D <= PC_D;
            Instruction_D <= Instruction_D;
        end
    end

endmodule


