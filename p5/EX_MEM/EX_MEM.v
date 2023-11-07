`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:13:31 11/03/2022 
// Design Name: 
// Module Name:    EX_MEM 
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
module EX_MEM(
    input wire RegWrite_E,
    input wire MemRead_E,
	 input wire jal_E,
    input wire [3:0] MemtoReg_E,
    input wire [31:0] Read2_E,
    input wire [31:0] PC_E,
    input wire [31:0] PC8_E,
    input wire [31:0] ALUresult_E,
    input wire [4:0] Dst_E,
    input wire [1:0] Tnew_E,
    input wire clk,
    input wire reset,
    output reg RegWrite_M,
    output reg [3:0] MemtoReg_M,
    output reg MemRead_M,
	 output reg jal_M,
    output reg [31:0] ALUresult_M,
    output reg [31:0] PC_M,
    output reg [31:0] PC8_M,
    output reg [31:0] Read2_M,
    output reg [4:0] Dst_M,
    output reg [1:0] Tnew_M,
	 input wire newsign_E,
	 output reg newsign_M,
	 input wire [4:0] Dst_E_New,
	 output reg [4:0] Dst_M_New
    );
    
    initial begin
        RegWrite_M = 0;
        MemtoReg_M = 0;
        MemRead_M = 0;
        ALUresult_M = 0;
		  jal_M = 0;
        PC_M = 0;
        PC8_M = 0;
        Read2_M = 0;
        Dst_M = 0;
        Tnew_M = 0;
		  newsign_M = 0;
		  Dst_M_New = 0;
    end

    always @(posedge clk) begin
        if(reset) begin
            RegWrite_M <= 0;
            MemtoReg_M <= 0;
            MemRead_M <= 0;
            ALUresult_M <= 0;
            PC_M <= 0;
				jal_M <= 0;
            PC8_M <= 0;
            Read2_M <= 0;
            Dst_M <= 0;
            Tnew_M <= 0;
				newsign_M <= 0;
				Dst_M_New <= 0;				
        end
        else begin
            RegWrite_M <= RegWrite_E;
            MemtoReg_M <= MemtoReg_E;
            MemRead_M <= MemRead_E;
				jal_M  <= jal_E;
            ALUresult_M <= ALUresult_E;
            PC_M <= PC_E;
            PC8_M <= PC8_E;
            Read2_M <= Read2_E;
            Dst_M <= Dst_E;
            Tnew_M <= (Tnew_E == 2'b00) ? 2'b00 : (Tnew_E - 2'b01);
				newsign_M <= newsign_E;
				Dst_M_New <= Dst_E_New;
        end
    end

endmodule
