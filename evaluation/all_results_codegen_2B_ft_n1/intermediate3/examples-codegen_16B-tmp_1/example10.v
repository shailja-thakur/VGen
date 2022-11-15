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
always@( negedge clk, negedge reset)
begin
	if (~reset) // if reset
	begin
	r_reg <= 1;
	end // end if
	else // if not reset
	begin
	r_next <= r_reg; // assign r_next to r_reg
	// ^^ this is the feedback value : vector bit
	if (r_reg[2] && r_reg[4])
	begin
	q <= r_reg ^ 8'h18; //concatenate bit positions 2 and 4 of r_reg along with the feedback value and assign to output
	end // inner if
	else
	begin
	q <= r_reg; // assign to output
	end // otherwise
	end //� denoting else
end //always
end
end
end
end
end
endmodule
