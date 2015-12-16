`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:27:43 10/20/2015 
// Design Name: 
// Module Name:    PEDataFlow 
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
module PEDataFlow(i1,i2,i3,m1,m2);
	
	input i1,i2,i3;
	output m1,m2;
	wire i1,i2,i3;
	wire m1,m2;
	
	//or ore( m2,i3,i2 );
	assign m2 = i3|i2;
	//not(tmp2,i2);
	assign tmp2 = ~i2;
	//and and1(tmp,i1,tmp2);
	assign tmp = i1 & tmp2;
	//or or2( m1,i3,tmp);
	assign m1 = i3|tmp;
endmodule
