`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:28:35 11/10/2022 
// Design Name: 
// Module Name:    DMop 
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
`define lb 6'b100000
`define lh 6'b100001
`define lw 6'b100011
`define sb 6'b101000
`define sh 6'b101001
`define sw 6'b101011
module DMop(
    input wire [31:0] Instruction_M,
	 input wire [31:0] ALUresult_M,
    output reg [3:0] m_data_byteen,
    output reg [3:0] Loadop
    );
	 wire [5:0] Instruction_Class;
	 wire [1:0] Byte_num;
	 
	 assign Instruction_Class = Instruction_M[31:26];
	 assign Byte_num = ALUresult_M[1:0];
	 
	 always @(*) begin
		case(Instruction_Class)
			`lb:begin
					Loadop = 4'b0001;
					m_data_byteen = 0;					
			end
			`lh:begin
					Loadop = 4'b0010;	
					m_data_byteen = 0;						
			end
			`lw:begin
					Loadop = 4'b0000;		
					m_data_byteen = 0;						
			end
			`sb:begin
					Loadop = 4'b0000;
					//m_data_byteen = 0;		
					case(Byte_num)
						2'b00:begin
								m_data_byteen = 4'b0001;	
						end
						2'b01:begin	
							m_data_byteen = 4'b0010;	
						end
						2'b10:begin	
							m_data_byteen = 4'b0100;	
						end
						2'b11:begin
							m_data_byteen = 4'b1000;	
						end
						default:begin	
							m_data_byteen = 0;
						end
					endcase
			end
			`sh:begin
					Loadop = 4'b0000;	
					case(Byte_num[1])
						1'b1:begin	
							m_data_byteen = 4'b1100;	
						end
						1'b0:begin	
							m_data_byteen = 4'b0011;	
						end
						default:begin	
							m_data_byteen = 0;
						end
					endcase						
			end
			`sw:begin
					Loadop = 4'b0000;		
					m_data_byteen = 4'b1111;						
			end
			default:begin
				Loadop = 4'b0000;		
					m_data_byteen = 4'b0000;	
			end
		
		endcase
	 end

	

endmodule
