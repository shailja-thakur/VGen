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
// assign feedback value concatenated with 4 MSBs of r_reg to r_next
// assign r_reg to the output q
assign q = [1:0] {r_reg, feedback_value};
always @(posedge clk or posedge reset)
begin
	if (reset) 
	begin
// assign the next value of r_reg to q, assign 0 for MSB and the rest to 0
// assign feedback value to the MSB of the r_reg instantiated
// pad the feedback value with a 1 at bit position 0 to match how the r_reg is 
// updated
// NOTE: the MSB of the r_reg is how the output is handled; it's the way to
// integrate into the network
	r_reg <= 5'b0;
reg [4:0] r_next_buffer;

// for and feed FS
assign r_next = {(r_next_buffer[2:0] ^ (feedback_value + 8'b0)) ,end
end
endmodule
