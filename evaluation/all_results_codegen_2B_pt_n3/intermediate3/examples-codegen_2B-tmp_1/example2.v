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
always @(posedge clk) begin
   r_reg <= ( reset ? (1'b0) : (r_next));
   r_next[5:0] = r_reg[5:0] ^ (r_reg[2] ? 0b0011 : 0b00001);
   r_next[6:0] = feedback_value += r_next[4] ^ r_next[3];
   if ( bit in [0, 1, 4, 5])
      r_reg[7] = 0;
   else
      r_reg[7] = 1;
   q <= r_reg;
end
endmodule