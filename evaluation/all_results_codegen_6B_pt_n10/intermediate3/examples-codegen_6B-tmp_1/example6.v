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
always (clk or reset) begin
     if (reset) begin
          r_reg <= 0;
          r_next <= 0;
          feedback_value <= 0;
     end
else begin    
       // save value of r_reg into clk_concat port
       cycle_num <= cycle_num + 1;
       clk_concat <= r_reg;
       if (clk_concat == clk) begin
          // compare most significant bit of r_reg with most significant bit of feedback_value.
          // The shift operation is not just shifting one bit to the left because the most significant bit is 
          // always 0 for some even numbers and the MSB is not necessary to control the LFSR. Just add 2 to the 
          // integer and shift right 1 bit to avoid having two LFSRs with the same value, thus save a bit (extra dutyend
end
end
endmodule
