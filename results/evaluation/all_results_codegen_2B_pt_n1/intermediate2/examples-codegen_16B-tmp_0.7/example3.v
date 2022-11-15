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
always @ (posedge clk or negedge reset)
begin
	if (reset)
	// reset case
	begin
	q <= 4'd1;
	end
	else
	begin
	case (q)
	4'd1:
	// case 1: 
	begin
	q <= 4'd2;
	end 
	4'd2:
	// case 2
	begin
	q <= 4'd3;
	end
	4'd3:
	// case 3
	begin
	q <= 4'd4;
	end
	4'd4:
	// case 4
	begin
	q <= 4'd5;
	end
	4'd5:
	// case 5
	begin
	q <= 4'd6;
	end
	4'd6:
	// case 6
	begin
	q <= 4'dend
end
end
endmodule
