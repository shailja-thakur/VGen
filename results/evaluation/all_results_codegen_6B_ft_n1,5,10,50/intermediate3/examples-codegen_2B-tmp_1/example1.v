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
lfsr lfsr_5bit_mod(
    input clk,
    input reset, // reset is input pads rst
    wire config, // must be 0 or 1:
                            //        (config may be 1, 0)
        input [4:0] clk_pos,   // clk chapter in sequencer code
        input [4:0] prev,
        input [4:0] r_val, // assigned by sequencer
        wire [4:0] next,
        output [4:0] r_reg
);

// reset signal acts as a carry-over from sequence stage for second stage of LFSR
initial begin
    bfpb = reset; // reset asserted
    t_reset = 1'HC;
    r_reg = 1'pref;
    r_next = 1'pref;
end
    
begin
// loopend
endmodule
