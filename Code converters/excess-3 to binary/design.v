module excess3_bin(a,y);
  input [3:0]a;
    output reg [3:0]y;
	  always @(a) begin
		      if(a>2) begin
						y=a-3;
						    end
							  end
							  endmodule
