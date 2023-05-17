module bin_excess3(a,y);
  input [3:0]a;
    output reg [4:0]y;
      always@(a) begin
            y=a+3;
      end
endmodule
