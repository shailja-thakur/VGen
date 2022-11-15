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
always @ (posedge clk || posedge reset)
    if (reset) r_reg <= 1;
    else r_reg <= r_next;
    r_next <= {feedback, (r_reg[1:0] != r_reg[3:2]) && (r_reg[3:2] != r_reg[4:0})};
    feedback_value <= {r_reg[2:0], r_reg[4:0][11:8]};
    q <= {r_reg[4:3], r_reg[4:0], feedback_value[2:1], feedback_value[0]};
endmodule
