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
always@ (posedge clk)
begin
 
	// counter is disabled when q is 12
	if (q == 4'hC)
	begin
	q <= 4'h1;
	end
	// when counter is enabled, incrememnt q
	else
	begin
	// q + 1 only when clk is positive edge
	if (clk);
	// flip the order of cases when q is 12
	case (q)
	4'd1: q <= 4'h2;
	4'd2: q <= 4'h3;
	4'd3: q <= 4'h4;
	4'd4: q <= 4'h5;
	4'd5: q <= 4'h6;
	4'd6: q <= 4'h7;
	4'd7: q <= 4'h8;
	4'd8end
end
endmodule
