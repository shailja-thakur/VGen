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
    r_reg = 0b00110000; // set first value
    r_next = r_reg;
    feedback_value = 0b11100000; // set feedback value
    
    if (clk == 1'b0) r_reg = r_reg << 1; // if clock is low then set next value
    if (r_next & 0b00000100) r_reg = r_reg << 1; // if r_next bit is 1 then set next value
    r_next = r_reg ^ 0b00000101; // flip r_next bit to flip feedback_value bit
    r_next = r_next << 3; // move feedback_value to bit 5
    r_reg = r_next ^ r_reg; // square r_reg
    r_next = r_reg; // assign r_next to next value
    end
endmodule
