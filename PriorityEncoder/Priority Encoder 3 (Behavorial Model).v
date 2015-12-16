`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:22:14 10/20/2015 
// Design Name: 
// Module Name:    PEBhv 
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
module PEBhv(t1,t2,t3,n1,n2,clk);
	
	input t1,t2,t3,clk;
	output n1,n2;
	wire t1,t2,t3,clk;
	reg n1,n2;
	always@(negedge clk) begin
//	or ore( n2,t3,t2 );
//	not(tmp2,t2);
//	and and1(tmp,t1,tmp2);
//	or or2( n1,t3,tmp);
	n2 = t3 | t2;
	n1 = (t3 | ((~t2)&(t1))); 
	end
endmodule
