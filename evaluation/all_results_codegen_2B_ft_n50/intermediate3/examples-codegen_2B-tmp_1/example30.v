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
begin
	if(reset)
begin
	r_reg <= 5'b00001;
end
else
begin
	r_reg <= r_next;
end
end
assign feedback_value = bit1_cnt == 1'b1 && check_bit_cnt2 == 1'b0 && check_bit_cnt3 == 1'b1;
assign bit23_cnt = r_reg[4];
always @(posedge clk or posedge reset)
begin
	if(reset)begin
	r_next[4] <= 0;
	r_next[3] <= 0;
	end
else
begin
	if(bit23_cnt == 1'b1)
	begin
if((check_bit_cnt2 == 1'b0) && (end
end
end
endmodule
