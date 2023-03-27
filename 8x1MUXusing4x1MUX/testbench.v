module tb_mux();
reg [7:0]in;
  reg [2:0]sel;
wire out;
  mux_8x1 uut(.in(in), .sel(sel), .out(out));
initial
begin
in=8'b10110110;
sel[0]=1'b0;
sel[1]=1'b0;
sel[2]=1'b0;
end
  always #40  sel[2]=~sel[2];
  always #20  sel[1]=~sel[1];
  always #10  sel[0]=~sel[0];
initial
begin
#200 $finish;
end
  
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
