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
always (clk or reset) begin
    r_reg <= ~r_next;
    r_next <= (r_reg xor twregs[32]);
    q <= r_next xor 4'b5, 4'b4;
end

package ccu border(input ce, input clk, input cmp, input en, input in_enable, input int_enable, input reset)
        (
            selb( r_reg, int_enable, in_enable ),
            ce(ce),
            clk(clk),
            cmp(cmp),
            en(en),
            shutdown(output)
        );
    
package p2p main(input N, input en)
        (
            parameter [2:0] sum_bit,

            big <= std_logic_vector(right_to_left(N-1,endmodule
