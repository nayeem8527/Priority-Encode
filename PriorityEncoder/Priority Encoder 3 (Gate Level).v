`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ELD
// Engineer: Mandeep Singh
// 
// Create Date:    13:38:27 10/20/2015 
// Design Name:	First Design
// Module Name:    PE 
// Project Name: Priority Encoder Implementation
// Target Devices: FPGA 
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
module PE(q1,q2,q3,o1,o2);

	input q1,q2,q3;
	output o1,o2;
	wire q1,q2,q3;
	wire o1,o2;
	or ore( o2,q3,q2 );
	not(tmp2,q2);
	and and1(tmp,q1,tmp2);
	or or2( o1,q3,tmp);
//	always@(posedge clock) begin
//	
//	end
endmodule
