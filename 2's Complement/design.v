module twoComp(
	input[2:0] inp,
	output[3:0] tcop,
	output[3:0] xorop);

	assign tcop = -inp;
	assign xorop = ~inp + 1'b1; //Invert input array using XOR logic and add 1
endmodule
