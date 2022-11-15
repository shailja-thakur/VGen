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
// assignments 
always @ (posedge clk or posedge reset) begin
	if (reset)
	begin 
	q <= 4'b0000; // reset the fifo
	end
	else 
	case (q) // synopsys full_case parallel_case 
	4'b0000: begin q <= 4'b0001; end // normal increment
	4'b0001: begin q <= 4'b1101; end // increment q to 14
	4'b1101: begin q <= 4'b1111; end // increment q to 15
	4'b1111: begin q <= 4'b0011; end // increment q to 17
	4'b0011: begin q <= 4'b1011; end // increment q to 13
	4'b1011: begin q <= 4'b1100; end // increment q to 12
	4'bend
endmodule
