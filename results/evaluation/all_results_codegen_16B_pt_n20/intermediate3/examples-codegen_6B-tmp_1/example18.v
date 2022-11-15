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
always(clk or reset)
begin
    if (not reset) begin
        r_next[:] = r_reg[:5];
        r_reg[5] = get_xor_d(r_next[4:1],2);
        r_next[4] = r_reg[4];
        r_prev = r_reg;
        r_reg[2] = 1;
        //callback();
    end
else begin
    r_prev = r_next;
    r_next[:] = r_prev[7:6] and 1'b0 or bits(get_xor_d(r_prev[4:1],0),(r_prev[4:1] AND 3),(3 - r_prev[0]));
    q[7:0] = ((r_next[5:4] AND 1'bend
end
endmodule
