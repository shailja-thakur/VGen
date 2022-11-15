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
always @(posedge clk or posedge reset) begin
    if (reset)		 
	q <= 1;	// on reset
	else if (q == 12)  // if q was 12 make it 1 on the next clock 
		q <= 1;	// otherwise set q to 1
	else 		// normal case, increment q
		q <= q + 1;
end
// Withing the pipelined stages, q should never be expended to zero 
// Interconect the output of stage 2 with the input to stage 3 
assign y = {3'b100,3'b010,3'b001 }; 
// stage 2, 3, and 4 stages
counter number_of_ones = 4'b0; // number of ones in the input y
//
//  three stage half carry cascade    
// Two utilised, hence q[0]
//endmodule
