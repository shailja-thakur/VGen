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

// soft-rand
wire next_wrp [4:0];
reg [4:0] new_val;

assign new_next = ~b_c.q & (~ b_r.q & (new_wrp [7] ? 1 : 0)) & (~ next_wrp [3]) & (~ 1);
// assign new_val = (z0 + 1)*2^28 // (new_next*2^32 + (new_next ^int(softrand) ^ new_next == new_next));
assign new_val = new_next*2^28; // softrand(new next != new_next)

always @(*) // this tick rate in the firm sanfole app can not be greater than 200ns
{
    clk <= clk; 
    reset <= 1'b0;
    r_reg <= 0; // resetendmodule
