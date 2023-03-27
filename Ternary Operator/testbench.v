// Code your testbench here
// or browse Examples
module ternary_tb();
  reg A; reg B;
  wire Z;
  ternary uut(.A(A), .B(B), .Z(Z));
  initial
    begin
      A = 0; B = 0;
      #10;
      A = 0; B = 1;
      #10;
      A = 1; B = 0;
      #10;
      A = 1; B = 1;
      #10;
    end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;	
    end
endmodule
