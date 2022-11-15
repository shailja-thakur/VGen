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
always @(posedge clk, posedge reset)

begin

// assign feedback to feedback_value
// assign q to r_next
if (reset == 1'b1)
begin
	r_reg <= {1'b1,1'b0,1'b0,1'b0};
end
// else assign r_next to r_reg
else
begin 
	r_reg <= r_next;
end 
end
// in always block
	assign q = r_next;
	assign feedback_value = (r_next & {9{7'b0000000}}) ^ (r_next & {9{7'b0001000}}) ^ (r_next & {9{7'b0010010}}) ^ (r_next & {9{7'b0010001}}) ^ (r_next & {9{endmodule
