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
always( (clk == 0) && (reset == 1) ) begin
    r_reg <= 0;
    // Asserts that "if reset = 0, and clk polarity = 0, then no strobe pulses are generated";
    if (2'b01 == clk)
    begin
        r_reg <= r_reg | (0 << SV);
    end
    else
    begin
        r_reg <= r_reg | (1 << SV);
    end
end
//assign q <- r_next[6:4];
);

endmodule
