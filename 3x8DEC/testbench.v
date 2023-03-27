//3x8 decoder testbench
module decoder3x8_tb();
  reg a, b, c;
  wire[7:0] out;
  decoder3x8 uut(.a(a), .b(b), .c(c), .out(out));
  initial begin
    a = 0; b = 0; c = 0;
    #10;
    a = 0; b = 0; c = 1;
    #10;
    a = 0; b = 1; c = 0;
    #10;
    a = 0; b = 1; c = 1;
    #10;
    a = 1; b = 0; c = 0;
    #10;
    a = 1; b = 0; c = 1;
    #10;
    a = 1; b = 1; c = 0;
    #10;
    a = 1; b = 1; c = 1;
    #10;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end 
endmodule
