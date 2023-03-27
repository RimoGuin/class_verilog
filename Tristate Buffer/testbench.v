// Code your testbench here
// or browse Examples
module tristate_tb;
  reg i,cnt;
  wire z;
  tristate uut(.i(i),.cnt(cnt),.z(z));
  initial
    begin
      i=0; cnt=0;
      #10;
      i=0; cnt=1;
      #10;
      i=1; cnt=0;
      #10;
      i=1; cnt=1;
      #10;
    end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(0,tristate_tb);
    end
endmodule
