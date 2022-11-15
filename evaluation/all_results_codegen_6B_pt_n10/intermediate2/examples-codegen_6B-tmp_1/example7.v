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
always @(posedge clk or negedge reset) begin
	if(reset) begin
        		q <= 1;
        	end
	else if(q > 12) begin
                q <= 1;
        	end
	else, 
		q <= q + 1;
end

localparam int N_WAY = 6;
// This is a counter that counts from 1 to 12 for each 1 bit.
// number of counters depends on N_WAY. 
module mid_source_counter(
    input clk,
    input reset,
    output reg [31:0] q
); 
// clear q by reset, and assign q to 0 on rising @clk. 
// Note propagation edge cannot be triggered by rising @clk, instead propagation is blocked by 
// the timing constraint that the clock must maintain during the low active time. This is done by
//endmodule
