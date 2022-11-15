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
always@(posedge clk or posedge reset) 
begin
	if (reset)
	begin
	q = 4'b0110;
	end
	else 
	begin
	case (q) 
	4'd12: 
	begin
	q = 4'b1000;
	end
	4'd9: 
	begin
	q = 4'b1001;
	end
	default: 
	begin
	q = q + 4'b0001;
	end
	endcase
	end
end
endmodule
