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
always(clk)
begin
    if (reset) begin
        r_reg <= 1;
    end else begin
        r_next <= r_reg xor g_lfsr_5_3(r_reg);
        feedback_value <= r_next[4:0];
        q <= (feedback_value << 5) | r_next[5:0];
    end
end

// The next LFSR taps
module g_lfsr_5_3( 
    input [5:0] r_next
);
reg [5:0] r_reg;
wire [3:0] r_next_3;
always(r_next) begin
    r_reg <= r_next;
    r_next_3 <= r_next[4:0] xor g_lfsr_3_0(r_next[4end
endmodule
