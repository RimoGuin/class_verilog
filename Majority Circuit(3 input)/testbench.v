module MajorityCir_tb();
	reg[4:0] sw = 0;
	wire led;
	integer i;
	MajorityCir uut(.sw(sw), .led(led));
	initial
	begin
		for(i = 0; i < 31; i = i + 1)begin
			#10;
			sw = sw + 1'b1;
		end
	end
	initial begin
		$dumpfile("dump.vcd");
		$dumpvars;
	end
endmodule
