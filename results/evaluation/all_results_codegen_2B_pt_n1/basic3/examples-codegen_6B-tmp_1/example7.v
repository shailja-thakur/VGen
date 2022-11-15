// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or posedge rst) begin
  if (in[in.IN_FST] == 1) begin
    sel := 0;
    dout := 0;
  end
  else begin
    sel := in[in.IN_SEL];
    dout |= ((sel == 0)? 128 : 0); // MSB set if low-nibble selected
  end
    if (sel == 0) begin
      dout <<= 1; // Shift to the left by one bit.
      dout &= 0x7; // Clear the last bit by ANDing with 1.
    end
    dout <<= d2_b[sel]; // x2 is highest bit and d2 is low-Nibble/LSB priority.
    pos <= dout; // Output bit fst_clk.
  end
end
endmodule
