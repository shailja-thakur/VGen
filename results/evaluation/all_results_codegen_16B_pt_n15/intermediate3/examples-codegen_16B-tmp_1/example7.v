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
function [7:0] next [15:0] (
    r_reg,
    clk,
    reset
) begin
    if reset == 1'b0
    begin
        r_reg := 16'b0;
        r_next <= 4'b0;
    end
    else if clk == 1'b0
    begin
        r_reg_0 <= r_reg[7:4];
        r_reg_1 <= r_reg[5:3];
        r_next <= r_reg[4:0] xor (r_reg[2:0] xor (r_reg_0[15:12] xor r_reg_0[11:8]));
    end
end
endmodule
