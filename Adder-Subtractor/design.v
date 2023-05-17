module fulladder(input a,input b,input cin,output s,output cout);
  assign s=a^b^cin;
  assign cout=a&b||b&cin||b&cin;
endmodule

module addersub(input [3:0]a,input [3:0]b,input cin,output [3:0]s,output cout);
  
  wire c1,c2,c3;
  fulladder f1(a[0],b[0]^cin,cin,s[0],c1);
  fulladder f2(a[01],b[1]^cin,c1,s[1],c2);
  fulladder f3(a[2],b[2]^cin,c2,s[2],c3);
  fulladder f4(a[3],b[3]^cin,c3,s[3],cout);
endmodule
