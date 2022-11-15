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
always @(posedge clk or posedge reset)

if (reset) r_reg <= 1; // set tens bit to 0
else r_reg <= r_next; // propagate values through D flip-flops

if (reset) q <= 5'b1000000;//0; 
else if (r_reg [2:0] == 3'b101) begin //++++ highest bit and 1 bit to be removed
 feedback_value <= r_reg [3:1];
q <= q[4:1]; // keep the 1 bit at the highest 
end
else q <= q[4:1]; // ++++ lowest bit and 1 bit to be removed
end
endmodule
