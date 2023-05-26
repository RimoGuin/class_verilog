module bus(
  input[3:0] a,
  input b,
  output[3:0] z);

  assign z[3] = (a[3] & b) | (~b & 1'bz);
  assign z[2] = (a[2] & b) | (~b & 1'bz); 
  assign z[1] = (a[1] & b) | (~b & 1'bz);  
  assign z[0] = (a[0] & b) | (~b & 1'bz);

endmodule
