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
    r_reg <= (r_reg and RESET);
    r_next <= (r_reg and ~(r_reg and RESET));
    feedback_value <= r_reg;
    q <= (r_reg and r_next);
end
end
end

module logic_interfaces (
    input [7:0] a,
    input [7:0] b,
    output [7:0] result
);
wire X;
reg input_reg;
reg output_reg;
function logic_interface(input_reg, output_reg) begin
    if ((input_reg and ~X) or (~input_reg and X)) begin
        output_reg |= input_reg;
    end
end
end
end

module binary_interfaces (
    input [7:0] aendmodule
