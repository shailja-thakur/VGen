// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in[2:0] || ~in[5:0]) begin
  lcd_pos = pos < 8 ? pos : pos - 16;
  pos = pos < 8 ? pos + 1 : pos;
end

// Write the position to LCD display
always @ (lcd_pos) begin
  h_const = h_const_value;
  h_stack = h_stack << 3 & ~(H_CLEAR_BUSY | (H_STACK_LOAD));
  h_stack = h_stack ^ pos & 0xf;
  lcd_intseq.high = ((h_stack & 0x10) == 0);
  lcd_intseq.low = lcd_clear_busy_high ? 1 : 0;
end
endmodule
