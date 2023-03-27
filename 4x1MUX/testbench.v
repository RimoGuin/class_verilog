//4x1 MUX testbench
//Timespace 10ps/1ns
module mux_4x1_tb();
  reg a,b,c,d;

  reg [1:0] s;

  wire z ; 


  mux_4x1 uut(.a(a) ,.b(b),.c(c),.d(d), .s(s),.z(z));

initial 
  begin 
  	a = 1; b = 1; c = 0; d = 1;	s = 2'b00;
  	#10;
    a = 1; b = 1; c = 0; d = 1;	s = 2'b01;
  	#10;
    a = 1; b = 1; c = 0; d = 1;	s = 2'b10;
  	#10;
    a = 1; b = 1; c = 0; d = 1; s = 2'b11;
  	#10;
    end 
  
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars;
  end 
endmodule
  
