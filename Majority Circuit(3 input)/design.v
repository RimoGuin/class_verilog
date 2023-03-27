//Write a verilog program to design, simulate and test a 3 input majority
//circuit having the following properties:
//1. Take 3 bit input as A2 A1 A0
//2. Output as z
module MajorityCir(
	input[4:0] sw,
	output led);
	
	assign led=(sw[0] & sw[1] & sw[2]) | (sw[0] & sw[1] & sw[3]) | (sw[0] & sw[2] & sw[3]) |
				(sw[0] & sw[2] & sw[4]) | (sw[0] & sw[3] & sw[4]) | (sw[0] & sw[1] & sw[4]) |
				(sw[1] & sw[2] & sw[3]) | (sw[1] & sw[2] & sw[4]) | (sw[1] & sw[3] & sw[4]) |
				(sw[2] & sw[3] & sw[4]);
endmodule
