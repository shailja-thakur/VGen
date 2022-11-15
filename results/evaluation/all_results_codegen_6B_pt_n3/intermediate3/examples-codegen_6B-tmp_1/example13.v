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
always (clk and not reset) begin
    if (reset) 
    begin
        r_next <= 1;
        r_reg <= 1;
        r_next[4:] <= 4'b01;
        r_reg[4:] <= 4'h0;
        feedback_value <= 4'h00;
    end else
    begin
        r_next <= r_reg;
        r_reg <= lsl(r_reg, 4) reg concat_half(8'h01111111);
        if (r_next[0] eq 4) begin
            // if q[2:1] is all ones and q[3:0] is all zero, assign feedback to h
            // to cause a transition to 0
            q <= h[w_f_sub(feedback_value, 8'h01111111)];
        else beginend
end
end
end
endmodule
