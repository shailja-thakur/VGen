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
	if(reset) 
	begin
	q <= 4'd1;
	end
	else 
	begin
	case(q)
	4'd5: q <= 4'd1;
	4'd6: q <= 4'd1;
	4'd7: q <= 4'd8;
	4'd8: q <= 4'd1;
	4'd9: q <= 4'd9;
	4'd10: q <= 4'd1;
	4'd11: q <= 4'd9;
	4'd12: q <= 4'd1;
	default: q <= q + 4'd1;
	endcase
	end
	end
endmodule
