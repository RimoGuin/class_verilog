module bin2bcd_tb();
	reg [3:0] bin;
		wire[4:0] bcd;
			integer i;

				bin2bcd uut(.bin(bin), .bcd(bcd));
					initial begin
								$monitor("Binary: %b, BCD: %b",bin,bcd);
										for(i=0;i<8;i=i+1) begin
														{bin[3], bin[2], bin[1], bin[0]}=i;
																	#10;
																			end
																				end
																					initial begin
																								$dumpfile("dump.vcd");
																										$dumpvars;
																											end
																												endmodule


