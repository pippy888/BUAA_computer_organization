`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:40:11 11/10/2022 
// Design Name: 
// Module Name:    Store_MemData 
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
module Store_MemData(
    input wire [31:0] Read2_M,
    input wire [3:0] m_data_byteen,
	 output reg[31:0] m_data_wdata
    );
	 
	 
	 always @(*) begin
		case(m_data_byteen)
			4'b0001:begin
					m_data_wdata = {{24{1'b0}},Read2_M[7:0]};
					end
			4'b0010:begin
					m_data_wdata = {{16{1'b0}},Read2_M[7:0],{8{1'b0}}};
					end
			4'b0100:begin
					m_data_wdata = {{8{1'b0}},Read2_M[7:0],{16{1'b0}}};
					end
			4'b1000:begin
					m_data_wdata = {Read2_M[7:0],{24{1'b0}}};
					end
			4'b0011:begin
					m_data_wdata = {{16{1'b0}},Read2_M[15:0]};
					end
			4'b1100:begin
					m_data_wdata = {Read2_M[15:0],{16{1'b0}}};
					end
			default:begin
				m_data_wdata = Read2_M;
			end	
		endcase
	 end

endmodule
