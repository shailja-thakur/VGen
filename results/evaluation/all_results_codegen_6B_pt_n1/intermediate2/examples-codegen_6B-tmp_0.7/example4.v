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
//
always @(posedge clk or posedge reset)
begin
	if (reset) // if (reset)
	begin 
 	 	q <= 4'b0001; // reset to 0001
	end
	else if (q == 4'd12) // if (q == 12)
	begin
	 	q <= 4'b0001; //reset to 0001
	end
	// I don't know if this will work in all cases. I will put it there for now,
	// although I think it will.
	else
	begin
	 	q <= q + 4'b0001; // increment q by 1
	end
end
endmodule
