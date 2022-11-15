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
initial begin
  clk <= 1'b0;
  reset <= 1'b0;

  r_reg <= 0; // there must be a gpio_read with a pulldown resistor
  r_next <=  0;

  feedback_value <=
    '0' & ( r_reg          &
            ( r_next          &
              r_reg           &
                (r_reg &                  r_next          )) ); // feedback as a combination of clk and reset
  r_reg <= 1;
  r_ptr <= r_reg;

  q <= 
    #7'h0000000000000000; // starts at tap 7
  r_ptr_reset <= 1;
end
endmodule
