// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
always @(posedge clk or negedge rst) begin
  if (rst)
  begin
    reg0 <= 0;
    reg1 <= 0;
    reg2 <= 0;
    reg3 <= 0;
  end
  else
  begin
    if (sel == 1) 
      reg1 <= a;
    else
    if (sel == 2)
      reg2 <= a;
    else
    if (sel == 3)
      reg3 <= a;
    else
    begin
      // Must ensure we assume unsigned logic.
      if(a == 0)
        sbiw(1, 7);
      else
      or(reg0, reg1, reg2, reg3);
    end
  end
end
`;

bench(`
mux ${fixtures}
`);

bench({
endmodule
