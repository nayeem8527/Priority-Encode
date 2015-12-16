`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:33:39 10/20/2015
// Design Name:   PE
// Module Name:   D:/Mandeep/Sem 3/Embedded Logic Design/Xilinx/PriorityEncoder/TEST.v
// Project Name:  PriorityEncoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST;

	// Inputs
	reg q1;reg i1;reg t1;
	reg q2;reg i2;reg t2;
	reg q3;reg i3;reg t3;
	reg clk;
	// Outputs
	wire o1,m1,n1; 
	wire o2,m2,n2;

	// Instantiate the Unit Under Test (UUT)
	PE obj1 (.q1(q1),.q2(q2),.q3(q3),.o1(o1),.o2(o2));
	PEDataFlow obj2 (.i1(i1),.i2(i2),.i3(i3),.m1(m1),.m2(m2));
	PEBhv obj3 (.t1(t1),.t2(t2),.t3(t3),.n1(n1),.n2(n2),.clk(clk));
	initial begin
		// Initialize Inputs
		q1 = 0;i1 = 0;t1 = 0;
		q2 = 0;i2 = 0;t2 = 0;
		q3 = 0;i3 = 0;t3 = 0;
		clk = 0;
		#100;
	end
   always
	 #2.5 clk =~clk;
	always 
	 #5 q1=~q1;
	always
	 #5 i1=~i1;
	always
	 #5 t1=~t1;
	always
	 #10 q2=~q2;
	always
	 #10 i2=~i2;
	always
	 #10 t2=~t2;
	always
	 #20 q3=~q3;
	always
	 #20 i3=~i3;
	always
	 #20 t3=~t3;
endmodule

