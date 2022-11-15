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
always@(posedge clk, posedge reset) begin
	if(reset == 1'b1)
		q <= 0;
	else begin
		if(counter == 750000)
			q <= 1; // q is 0
		else 
			q <= 0;
	end
end
endmodule
