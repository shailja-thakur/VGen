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
always (posedge clk) begin
r_reg = 1;
if (reset) begin
set_value: begin
r_next = r_reg;
	if (r_next[3] == 1) feedback_value <= 0;
else feedback_value <= concat(int("1111"), r_next[3:1]);
end
else r_next = ctxt_update_value(r_next);
end
end

// hex to bin
module b2h(input [10] one, input [10] zero );
reg [23:0] M, MK;
reg [2:0] tri, tout;                  // 3 bit wide
orthogonal M(2, 32);                 // partially convolved Bit-AND array
always (posedge clk) begin
tout <= tri;                //[1,1,1,1,1,1,end
endmodule
