module test;
  reg [3:0]a;
    wire [3:0]y;
	  excess3_bin DUT(.a(a),.y(y));
	    initial begin
			    $dumpfile("dump.vcd");
				    $dumpvars(1);
					    a=4'b0000;
						    #5
							    a=4'b0001;
								    #5
									    a=4'b0010;
										    #5
											    a=4'b0011;
												    #5
													    a=4'b0100;
														  end 
														  endmodule
