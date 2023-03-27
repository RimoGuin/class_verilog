//Implementation of 4x1 MUX
module mux_4x1(
  input a,
  input b,
  input c,
  input d,
  input[1:0] s,
  output z
);
  assign z = s[1] ? (s[0] ? d : c) : (s[0] ? b : a);
endmodule

