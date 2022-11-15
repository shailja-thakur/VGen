// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or (sel <= 1 && in[0])) begin
  if (sel <= 1) begin
    pos <= 1;
  end
  else begin
    if (in[0] || in[1]) begin
      pos <= in[1] << 1 | in[0];
    end
  end
end
"""
    )

    tb.verify(check_not_sel)

    tb.run()
    tb.assertEqual(0, tb.read(pos))

    tb.run()
    tb.assertEqual(0, tb.read(pos))

    tb.run()
    tb.assertEqual(1, tb.read(pos))

    tb.run()
    tb.assertEqual(1, tb.read(pos))

    tendmodule
