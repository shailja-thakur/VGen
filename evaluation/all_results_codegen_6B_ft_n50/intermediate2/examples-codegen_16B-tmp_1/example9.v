// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always @(posedge clk)
begin 
	if (reset == 1'b1) 
	// on reset, assign q to zero 
	begin
	// synthesis full_case
	case (q) 
	// synthesis parallel_case

	1'd0:
	begin
	// synthesis full_case
	q <= 1'd1; 
	end
	9'd11:
	begin
	// synthesis full_case
	q <= 1'd0; 
	end
	default:
	begin
	// synthesis full_case
	q <= q + 1'b1; 
	end
	// end case statement
	end 
 // end case statement
end 
// end always block 
endmodule
