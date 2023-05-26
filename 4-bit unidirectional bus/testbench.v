module bus_tb();
  reg[3:0] a = 0;
  reg b;
  wire[3:0] z;
  bus uut(.a(a),.b(b), .z(z));
  integer i;
  initial begin
	  b = 0;
	  for(i = 0; i < 16; i = i + 1)begin
		  #10; a = a + 1'b1;
	  end
	  b = 1; a = 0;
	  for(i = 0; i < 16; i = i + 1)begin
		  #10; a = a + 1'b1;
	  end
  end
  initial begin
	  $dumpfile("dump.vcd");
	  $dumpvars;
  end
endmodule

