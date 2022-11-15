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

// concatenating the feedback value with the 4 MSB of r_reg gives
// the feedback value to the next bit of the random number
assign r_next = {r_reg[4], feedback_value, r_reg[3:0]};

// assign the feedback value to the q_next
assign q_next = r_next;

// assign the output q to the output q
assign q = q_next;

// assign the output q to the output q

// assign feedback value to the q_next
assign feedback_value = r_reg[2];

// assign the next state of the random number generator
always @(posedge clk or posedge reset)
begin

// if reset is high, set r_reg to 1
if (reset)
begin
	r_reg <= 5'b1;
end

//end
endmodule
