// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q

// clock 20 forwarded from clk 16
always @(dx)
begin
    // clock 20 for 1ms
begin
  if (clk == in_clk) // test for clk rising edge
    begin // store the CRS bits and advance the pointer
      r_reg = r_reg>>1 | (r_next & 0x80);
      r_next = r_reg<<3;
      if ((r_next is bit2) or (r_next is bit4)) {
        feedback_value = r_reg;
        r_reg = 0;
        if (not reset) r_reg = r_reg | (r_next & 0x80);
      }
    end else begin //clk rate is too slow, we are awake
      r_reg = r_reg>>1 | (r_next & 0x180); // copy 4 mostend
end
endmodule
