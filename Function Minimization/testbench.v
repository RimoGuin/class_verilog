module minifunc_tb();
	reg[2:0] A = 0;
	wire[2:0] B;
	integer i;
	miniFunc uut(.A(A), .B(B));
	initial begin
		for(i = 0; i < 8; i=i+1)begin
			#10;
			A = A + 1'b1;
		end
	end

	initial begin
		$dumpfile("dump.vcd");
		$dumpvars;
	end
endmodule
