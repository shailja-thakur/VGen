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
// add r_reg and r_next
always @(posedge clk or posedge reset)
begin
 if (reset == 1'b1) 
begin
	r_reg <= 5'b00000;
end
else
begin
 r_reg <= r_next;
end
end
assign r_next = r_reg << 1;
xor xor_1(.a(r_reg[2]), .b(r_reg[4]), .out(feedback_value));
xor xor_2(.a(feedback_value), .b(r_reg[4]), .out(r_next[4]));
assign q = r_reg;
endmodule
