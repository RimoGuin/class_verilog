module bin2gray_tb();

	reg[3:0] bin;
	wire[3:0] g, bin_out;
	integer i;

	bin2gray uut(.bin(bin), .g(g));
	initial begin
		for(i = 0; i < 16; i=i+1) begin
			bin <= i; #10;
		end
	end
	initial begin
		$dumpfile("dump.vcd");
		$dumpvars;
	end
endmodule
