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
// Note, that this is a ring counter - q goes back to 1 after q is maxed out. 
always @(posedge clk or posedge reset)
begin 
	if (reset) 
	begin 
 	 q = 4'b1; 	 
	end 
	// I'm gonna make this into a switch statement 
	//case(q) 
	//4'b1: q = 4'b1; 
	//4'b1: q = 4'b0; 
	// default: q = q + 1; 
	//endcase 
	if (q == 4'b1) 
	begin 
	q = 4'b0; 	 
	end 
	else if (q == 4'b0) 
	begin 
	q = 4'b0; 	 
end
end
endmodule
