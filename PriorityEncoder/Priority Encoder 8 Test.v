`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:29:19 10/20/2015
// Design Name:   PE8
// Module Name:   D:/Mandeep/Sem 3/Embedded Logic Design/Xilinx/PriorityEncoder/PE8_Test.v
// Project Name:  PriorityEncoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PE8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PE8_Test;

	// Inputs
	reg i1;
	reg i2;
	reg i3;
	reg i4;
	reg i5;
	reg i6;
	reg i7;
	reg i8;
	reg clk;

	// Outputs
	wire o1;
	wire o2;
	wire o3;
	wire o4;

	// Instantiate the Unit Under Test (UUT)
	PE8 uut (
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.i4(i4), 
		.i5(i5), 
		.i6(i6), 
		.i7(i7), 
		.i8(i8), 
		.o1(o1), 
		.o2(o2), 
		.o3(o3), 
		.o4(o4), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		i1 = 0;
		i2 = 0;
		i3 = 0;
		i4 = 0;
		i5 = 0;
		i6 = 0;
		i7 = 0;
		i8 = 0;
		clk = 0;
		#100;
	end
      
	always
	 #2.5 clk =~clk;
	always 
	 #5 i1=~i1;
	always
	 #10 i2=~i2;
	always
	 #20 i3=~i3;
	always
	 #40 i4=~i4;
	always
	 #80 i5=~i5;
	always
	 #160 i6=~i6;
	always
	 #320 i7=~i7;
	always
	 #640 i8=~i8;
endmodule

