// Code your testbench here
// or browse Examples
module full_add_tb;
  reg A,B,Cin;
  wire sum,cout;

  full_add uut(.a(A),.b(B),.cin(Cin),.sum(sum),.cout(cout));

  initial begin
   A = 0;
   B = 0;
   Cin = 0;
   #5;
   A = 0;
   B = 0;
   Cin = 1;
   #5;  
   A = 0;
   B = 1;
   Cin = 0;
   #5;
   A = 0;
   B = 1;
   Cin = 1;
   #5;
   A = 1;
   B = 0;
   Cin = 0;
   #5;
   A = 1;
   B = 0;
   Cin = 1;
   #5;
   A = 1;
   B = 1;
   Cin = 0;
   #5;  
   A = 1;
   B = 1;
   Cin = 1;
   #5;  
  end
  initial begin $dumpfile("full_tb.vcd");$dumpvars(0,full_add_tb); end

 endmodule 
