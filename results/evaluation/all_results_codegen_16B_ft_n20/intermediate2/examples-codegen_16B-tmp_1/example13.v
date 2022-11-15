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
always@( posedge clk, posedge reset ) 
begin 
	if (reset) 
	begin 
	// reset assigns q to 1
	q <= 4'b0001;
	// the above equation can be simplified as shown below
	// i.e., on the posedge of a clock, if it is reset,
	// set q to 1
	end 
	else if ( q == 4'd12 ) 
	begin
	// violation; something on the posedge is always wrong, 
	// hence it is reset
	q <= 4'b0001; 
	// make sure q seems to be counting the else loop rounds
	end 
	else 
	begin
	// violation
	q <= q + 4'b0001; 
	// seems to count 4 bits of violation
	end 
end 
endmodule
