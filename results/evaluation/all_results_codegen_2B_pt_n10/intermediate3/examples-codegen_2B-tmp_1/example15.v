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
always @(posedge clk)
    case (reset)
        reset_case
    default
        default_case
    case (reset_case)
        r_reg <= 1'b1;
        feedback_value <= 0;
        r_next <= (r_reg xor r_reg xor r_reg); // capture feedback bits
    case (default_case)
        r_reg <= reset;
        r_next <= r_reg;
    case (feedback_case)
        feedback_value <= 1;
        r_reg <= r_next yield r_reg;
    endcase
endmodule
