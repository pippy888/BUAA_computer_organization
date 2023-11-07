`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:31:40 11/10/2022 
// Design Name: 
// Module Name:    LoadMemData 
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
module LoadMemData(
    input wire [31:0] MemOutput_pre,
	 input wire [31:0] ALUresult_M,
    input wire [3:0] Loadop,
    output reg [31:0] MemOutput
    );
	 
	 always @(*) begin
		case(Loadop)
			4'b0000:begin//Ö±½ÓÊä³ö
				MemOutput = MemOutput_pre;
			end
			4'b0001:begin//lb
				MemOutput = {{24{MemOutput_pre[7+8*ALUresult_M[1:0]]}},{MemOutput_pre[7+8*ALUresult_M[1:0]-:8]}};
			end
			4'b0010:begin
				MemOutput = {{16{MemOutput_pre[15+16*ALUresult_M[1]]}},{MemOutput_pre[15+16*ALUresult_M[1]-:16]}};
			end
			default :begin
				MemOutput = MemOutput_pre;
			end
		endcase
	 end


endmodule
