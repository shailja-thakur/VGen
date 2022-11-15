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
    r = r_next;
    r_next = (r_next >> 1) | (r_reg << 4);
    r_reg = r;
    q = r_next ^ feedback_value;
    feedback_value = r_reg;
end

always @(posedge clk) begin
    if (reset == '0')
        r_next = 0;
end
end

// Put the FSM in reset mode after reset is asserted (i.e. '0')
// and after the rising edge of clk.
module rsfsm( 
    input clk,
    input reset,
    output [5:0] q
);
reg [5:0] r_reg;
wire [5:0] r_next;
wire feedback_value;
// on reset assign theendmodule
