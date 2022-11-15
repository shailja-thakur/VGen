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
always @* begin
	case(reset)
	1'b0: 
	begin	
	r_next = 5'h1; 
	q = r_reg;
	//{q,r_next} = {reset,1'b0};
	end

	default: 
	begin
	r_next = 5'h1;
	q = r_reg;
	end
	endcase
	end
always @(posedge clk) //to store a copy of r_next
begin
//	r_next = 5'h1;
	temp_next = r_next;
end

always @(*) // check if the feedback is active
begin
//	if((& (r_next[2:0])) && hdmi_pclk)
	if((& (temp_next[2:0]endmodule
