`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:07:08 10/20/2015 
// Design Name: 
// Module Name:    PE8 
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
module PE8(i1,i2,i3,i4,i5,i6,i7,i8,o1,o2,o3,o4,clk);
	input i1,i2,i3,i4,i5,i6,i7,i8,clk;
	output o1,o2,o3,o4;
	wire i1,i2,i3,i4,i5,i6,i7,i8,clk;
	reg o1,o2,o3,o4;
	always@(negedge clk) begin
	
	if (i8) begin
	o4 = 1;
	o3 = 0;
	o2 = 0;
	o1 = 0;
	end

	else if (i7) begin
	o4 = 0;
	o3 = 1;
	o2 = 1;
	o1 = 1;
	end
	
	else if (i6) begin
	o4 = 0;
	o3 = 1;
	o2 = 1;
	o1 = 0;
	end
	
	else if (i5) begin
	o4 = 0;
	o3 = 1;
	o2 = 0;
	o1 = 1;
	end

	else if (i4) begin
	o4 = 0;
	o3 = 1;
	o2 = 0;
	o1 = 0;
	end

	else if (i3) begin
	o4 = 0;
	o3 = 0;
	o2 = 1;
	o1 = 1;
	end

	else if (i2) begin
	o4 = 0;
	o3 = 0;
	o2 = 1;
	o1 = 0;
	end

	else if (i1) begin
	o4 = 0;
	o3 = 0;
	o2 = 0;
	o1 = 1;
	end

	else begin
	o4 = 0;
	o3 = 0;
	o2 = 0;
	o1 = 0;
	end
	
	end
endmodule
