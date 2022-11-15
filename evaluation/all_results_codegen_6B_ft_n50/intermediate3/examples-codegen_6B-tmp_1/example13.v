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
parameter seed= {5'b00000};
integer counter= 0;
integer countout= 0;
always@(posedge clk)
if(reset)begin 
	r_reg <= seed;
	q <=0;
	counter <= 1;
	countout <= 0; 
end
else begin	 
case(counter)
	1:begin
	if(feedback_value)begin
	r_next = r_reg;
	q[counter] = r_reg[3]^r_reg[4];//assign the two bits which are connected to the xor to the output
	end
	else begin
	r_next = r_reg;
	q[counter] = r_reg[3]^r_reg[4];//deassign the two bits which are connected to the xor to the output
	end
	rend
end
endmodule
