module twoComp_tb();
	reg[2:0] inp = 0;
	wire[3:0] tcop, xorop;
	integer i;
	twoComp uut(.inp(inp), .tcop(tcop), .xorop(xorop));
	initial begin
		for(i = 0; i < 15; i=i+1) begin
			#10;
			inp = inp + 1'b1;
		end
	end
	initial begin
		$dumpfile("dump.vcd");
		$dumpvars;
	end
endmodule
