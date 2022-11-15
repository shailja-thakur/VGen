// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
always @(posedge clk or negedge rst) begin
  if (rst) begin
    out <= 0;
  end
  else begin
    sel <= a[sel];
    out <= b[sel];
  end
end

//
// The following code is the Verilog-like representation of the above
// multiplexer.
//

// The multiplexer is a 4-bit multiplexer with a 2-bit select.
// The select is driven by the clock and the reset.
//
// In the following, 'mux' is the name of the module, 'sel' is the
// select, and 'a' and 'b' are the inputs.
//
// The select is bit 2.
// The select is driven by the clock.
// The inputs are bits 0 and 1.
// The output is bits 3 and 4.endmodule
