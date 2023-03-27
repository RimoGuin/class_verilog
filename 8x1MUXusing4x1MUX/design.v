module mux_8x1(in,sel,out);
input [7:0] in;
input [2:0] sel;
output out;
  mux_4x1 g1 (in[3:0],sel[1:0],n2);
  mux_4x1 g2 (in[7:4],sel[1:0],n1);
  assign out=sel[2] ? n1:n2; //If sel[2] is true then out=n1, else out=n2
endmodule

module mux_4x1 (in,sel,out);
  input [3:0] in;
  input [1:0] sel;
  output reg out;
always@(*)
begin
  case (sel)
    2'b00:out=in[0];
    2'b01:out=in[1];
    2'b10:out=in[2];
    2'b11:out=in[3];
  endcase
end
endmodule
