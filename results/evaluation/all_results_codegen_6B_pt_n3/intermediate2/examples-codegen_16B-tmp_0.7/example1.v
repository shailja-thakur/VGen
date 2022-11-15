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
always @( posedge clk or negedge reset )
begin
	if( reset == 1'b0 )
	begin
	// reset
	q <= 4'b0000;
	end
	else
	begin
	case( q )
	4'b0000:
	// q is 4'b0000
	begin
	q <= 4'b0001;
	end
	4'b0001:
	// q is 4'b0001
	begin
	q <= 4'b0010;
	end
	4'b0010:
	// q is 4'b0010
	begin
	q <= 4'b0011;
	end
	4'b0011:
	// q is 4'b0011
	begin
	q <= 4'b0100;
	end
	4'b0100:
	// q is 4'b0100end
end
endmodule
