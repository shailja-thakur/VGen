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
always (
    r_reg != 4 and 
    r_reg != 5 and 
    r_reg != 6 and

    not reset and

    clk = '1'
)
begin
   
   if( reset = '1' )
      r_reg = 0;
   else
      if r_next = (case { r_reg[3]} of
                   '0' => r_reg[4];
                   '1' => sha3(r_reg[4:1] xor prev_output_h xor r_reg[2:0] count {4});
               )
      end
      prev_output_h = sha3(r_reg[4:1] xor r_next[2:0] count {5});
   end

   q = ((feedback_value xor prev_output_h) xor r_endmodule
