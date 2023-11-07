`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:44:32 11/24/2022 
// Design Name: 
// Module Name:    CP0 
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
module CP0(
    input wire clk,
    input wire reset,
    input wire en,//дʹ���ź�
    input wire [4:0] CP0Add,//�Ĵ�����ַ SR12 Cause13 EPC14
    input wire [31:0] CP0In,//CP0д������
    output reg [31:0] CP0Out,//CP0��������
    input wire [31:0] VPC,//�ܺ�PC
    input wire BDIn,//�Ƿ����ӳٲ�ָ�������
    input wire [5:0] HWInt,//�����ⲿ�ж��ź�
    input wire EXLClr,//SR��1���ĸ�λ�ź�,eret
    input wire [4:0] ExcCodeIn,//�ڲ��쳣����
    output wire [31:0] EPCOut,//EPC��ֵ
	 output reg [31:0] EBase,
    output wire Req//���봦���������
	 //output reg ResponseInt
    );
	 
	//SR
	 reg [15:10] IM;//SR�Ĵ���IM�ֱ��Ӧ�����ⲿ�жϣ���Ӧλ��1��ʾ�����ж�
	 reg EXL;//SR�Ĵ����ģ��Ƿ����쳣��������У�����������ж�
	 reg IE;//SR��ȫ���ж�ʹ��,Ĭ�ϲ����ж�,1�ǿ����ж�
	 //��Ӧλ��0��ֹ�жϣ���������һЩ�жϣ�ֻ��ͨ��mtc0ָ���޸����������
	//Cause
	 reg [15:10] IP;//Cause�Ĵ�����IP��ʾ6λ�������ж�λ������ֻ��3������
	 //�ֱ��Ӧ�ⲿ�жϣ�TC0��TC1��ÿ�����ڶ�Ҫ���޸�һ�Σ�1��ʾ���ж�
	 reg [6:2] ExcCode;//Cause�Ĵ�����ExcCode�������ڲ��쳣����
	 reg BD;//Cause�Ĵ����Ƿ����ӳٲ�ָ��
	//EPC
	  reg [31:0] EPC;
	  
	 
	  
	  
	 //wire ResponseInt_Next;	 
	 wire [31:0] SR;//12
	 wire [31:0] Cause;//13
	 wire [31:0] EPC_Next;//14
	 wire IReq,EReq;
	 //�����Ĵ���
	 assign SR = {{16{1'b0}},IM,8'h0,EXL,IE};
	 assign Cause = {BD,15'h0,IP,3'h0,ExcCode,2'h0};
	 assign EPCOut = EPC;
	 //��Req�Ŀ��ƣ�I��interrupt E��exception
	 assign IReq = (|(HWInt&IM))&IE&!EXL;//IEֻ�������жϣ������쳣
	 assign EReq = (| ExcCodeIn)&!EXL;
	 assign Req = IReq | EReq;
	 assign EPC_Next = (Req == 1'b1) ? (BDIn ? VPC - 4 : VPC) : EPC;
	 //assign ResponseInt_Next = (HWInt[2]&IM[12]&IE&!EXL);
	 
	 
	 
	 initial begin
		IM <= 0;
		BD <= 0;
		EPC <= 0;
		IP <= 0;
		ExcCode <= 0;		
		EXL <= 0;
		IE <= 0;
		EBase <= 32'h0000_4180;
	 end
	 
	 always @(*) begin
		case(CP0Add)
			5'd12: CP0Out = SR;
			5'd13: CP0Out = Cause;
			5'd14: CP0Out = EPC;
			5'd15: CP0Out = EBase;
			default: CP0Out = 0;
		endcase
	 end
	 
	 always @(posedge clk) begin
		if(reset) begin
			IM <= 0;
			BD <= 0;
			EPC <= 0;
			IP <= 0;
			ExcCode <= 0;
			EXL <= 0;
			IE <= 0;
			EBase <= 32'h0000_4180;
		end
		else begin
			IP <= HWInt;
			if(Req) begin
				IM <= IM;
				EXL <= 1'b1;
				IE <= IE;
				BD <= BDIn;
				ExcCode <= IReq ? 0 :ExcCodeIn ;//������ڲ�������exccodein��������0��һ��Ҫ��0�����ﻹ�������ⲿ�ж����ȴ����ԭ��
				EPC <= EPC_Next;
				EBase <= EBase;
			end
			else if(en) begin//mtc0
				BD <= BD;
				ExcCode <= ExcCode;//��������Cause�ģ����������IP��mtc0���ı����
				case(CP0Add)
					5'd12:begin
						IM <= CP0In[15:10];
						EXL <= CP0In[1];
						IE <= CP0In[0];
						EPC <= EPC;
						EBase <= EBase;
					end
					5'd13: begin
						IM <= IM;
						EXL <= EXL;
						IE <= IE;
						EPC <= EPC;
						EBase <= EBase;
					end		
					5'd14: begin
						IM <= IM;
						EXL <= EXL;
						IE <= IE;
						EPC <= CP0In;
						EBase <= EBase;
					end	
					5'd15: begin
						IM <= IM;
						EXL <= EXL;
						IE <= IE;
						EPC <= EPC;
						EBase <= CP0In;
					end	
					default:begin
						IM <= IM;
						EXL <= EXL;
						IE <= IE;
						EPC <= EPC;
						EBase <= EBase;
					end
				endcase
			end
			
			else if(EXLClr) begin//eret,��mtc0��Ӧ
				BD <= BD;
				ExcCode <= ExcCode;
				IM <= IM;
				EXL <= 1'b0;//�˳�
				IE <= IE;
				EPC <= EPC;
				EBase <= EBase;
			end
			else begin
				BD <= BD;
				ExcCode <= ExcCode;
				IM <= IM;
				EXL <= EXL;
				IE <= IE;
				EPC <= EPC;
				EBase <= EBase;
			end
		end
	 end


endmodule
