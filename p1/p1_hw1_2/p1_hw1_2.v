`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:44:45 10/05/2022 
// Design Name: 
// Module Name:    p1_hw1_2 
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
module alu(
    input [31:0] A,
    input [31:0] B,
    input [2:0] ALUOp,
    output [31:0] C
    );
	 reg [31:0] temp;
	always @(*) begin
        if(ALUOp == 3'b000) 
            temp = A + B;
        else if(ALUOp == 3'b001) 
            temp = A - B;
        else if(ALUOp == 3'b010) 
            temp = A & B;
        else if(ALUOp == 3'b011) 
            temp = A | B;
        else if(ALUOp == 3'b100)
            temp = A >> B;
        else 
            temp = $signed(A) >>> B; 
    end

    assign C = temp;

endmodule
