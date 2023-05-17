module tb;
  /*
  reg a,b,cin;
  wire s,cout;
  
 
  fulladder t(a,b,cin,s,cout);
  */
  
  reg [3:0]a;
  reg [3:0]b;
  reg cin;
  wire [3:0]r;
  wire cout;
  
 
  addersub t(a,b,cin,r,cout);
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb);
  end
  initial begin
    
  /*  
    a=0;b=1;cin=0;#10;
    a=1;b=0;cin=1;#10;
    a=1;b=1;cin=0;#10;
    a=0;b=1;cin=1;#10;
    
 */   
	a=4'b1001;b=4'b1100;cin=0;#10;
    a=4'b1000;b=4'b0011;cin=1;#10;
    a=4'b1001;b=4'b1000;cin=0;#10;
    a=4'b1001;b=4'b1001;cin=1;#10;
   
    
  end
endmodule
