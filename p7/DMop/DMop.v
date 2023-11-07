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
	 input wire Req,
    output reg [3:0] m_data_byteen,
    output reg [3:0] Loadop,
	 output reg Error_M_Original,
	 output reg [4:0] ExcCode_M_Original
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
					if((ALUresult_M <= 32'h0000_2fff && ALUresult_M >= 32'h0)||(ALUresult_M >= 32'h0000_7f20 && ALUresult_M <= 32'h0000_7f23)) begin
						Error_M_Original	= 1'b0;	
						ExcCode_M_Original = 5'h0;
					end	
					else begin
						Error_M_Original	= 1'b1;	
						ExcCode_M_Original = 5'h4;
					end	
			end
			`lh:begin
					Loadop = 4'b0010;	
					m_data_byteen = 0;
					if(((ALUresult_M <= 32'h0000_2fff && ALUresult_M >= 32'h0)||(ALUresult_M >= 32'h0000_7f20 && ALUresult_M <= 32'h0000_7f23))&&(ALUresult_M[0]==1'b0)) begin
						Error_M_Original	= 1'b0;	
						ExcCode_M_Original = 5'h0;
					end	
					else begin
						Error_M_Original	= 1'b1;	
						ExcCode_M_Original = 5'h4;
					end
			end
			`lw:begin
					Loadop = 4'b0000;		
					m_data_byteen = 0;
					if( 
					( 
					(ALUresult_M <= 32'h0000_2fff && ALUresult_M >= 32'h0)||
					(ALUresult_M >= 32'h0000_7f00 && ALUresult_M <= 32'h0000_7f0b)||
					(ALUresult_M >= 32'h0000_7f10 && ALUresult_M <= 32'h0000_7f1b) ||
					(ALUresult_M >= 32'h0000_7f20 && ALUresult_M <= 32'h0000_7f23) )
					&&(ALUresult_M[1:0]==2'b00)
					)
					begin
						Error_M_Original	= 1'b0;	
						ExcCode_M_Original = 5'h0;
					end	
					else begin
						Error_M_Original	= 1'b1;	
						ExcCode_M_Original = 5'h4;
					end
			end
			`sb:begin
					Loadop = 4'b0000;
					//m_data_byteen = 0;		
					case(Byte_num)
						2'b00:begin
							m_data_byteen = Req ? 0 :4'b0001;										
						end
						2'b01:begin	
							m_data_byteen = Req ? 0 :4'b0010;	
						end
						2'b10:begin	
							m_data_byteen = Req ? 0 :4'b0100;	
						end
						2'b11:begin
							m_data_byteen = Req ? 0 :4'b1000;	
						end
						default:begin	
							m_data_byteen = 0;
						end
					endcase
					if((ALUresult_M <= 32'h0000_2fff && ALUresult_M >= 32'h0)||(ALUresult_M >= 32'h0000_7f20 && ALUresult_M <= 32'h0000_7f23)) begin
						Error_M_Original	= 1'b0;	
						ExcCode_M_Original = 5'h0;
					end	
					else begin
						Error_M_Original	= 1'b1;	
						ExcCode_M_Original = 5'h5;
					end
			end
			`sh:begin
					Loadop = 4'b0000;	
					case(Byte_num[1])
						1'b1:begin	
							m_data_byteen = Req ? 0 :4'b1100;	
						end
						1'b0:begin	
							m_data_byteen = Req ? 0 :4'b0011;	
						end
						default:begin	
							m_data_byteen = 0;
						end
					endcase	
					if(((ALUresult_M <= 32'h0000_2fff && ALUresult_M >= 32'h0)||(ALUresult_M >= 32'h0000_7f20 && ALUresult_M <= 32'h0000_7f23))&&(ALUresult_M[0]==1'b0)) begin
						Error_M_Original	= 1'b0;	
						ExcCode_M_Original = 5'h0;
					end	
					else begin
						Error_M_Original	= 1'b1;	
						ExcCode_M_Original = 5'h5;
					end
			end
			`sw:begin
					Loadop = 4'b0000;		
					m_data_byteen = Req ? 0 :4'b1111;
					if( 
					( 
					(ALUresult_M <= 32'h0000_2fff && ALUresult_M >= 32'h0)||
					(ALUresult_M >= 32'h0000_7f00 && ALUresult_M <= 32'h0000_7f07)||
					(ALUresult_M >= 32'h0000_7f10 && ALUresult_M <= 32'h0000_7f17) ||
					(ALUresult_M >= 32'h0000_7f20 && ALUresult_M <= 32'h0000_7f23) )
					&&(ALUresult_M[1:0]==2'b00)
					)
					begin
						Error_M_Original	= 1'b0;	
						ExcCode_M_Original = 5'h0;
					end	
					else begin
						Error_M_Original	= 1'b1;	
						ExcCode_M_Original = 5'h5;
					end
			end
			default:begin
				Loadop = 4'b0000;		
				m_data_byteen = 4'b0000;	
				Error_M_Original	= 1'b0;	
				ExcCode_M_Original = 5'h0;
			end
		
		endcase
	 end

	

endmodule
