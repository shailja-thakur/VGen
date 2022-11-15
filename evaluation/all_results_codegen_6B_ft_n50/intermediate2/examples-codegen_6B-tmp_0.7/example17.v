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
 
	case( q )
	4'b0000: 
	begin
 	 	q = q;
	end 
	4'b1100: 
	begin
 	 	q = q;
	end 
	4'b0011: 
	begin
 	 	q = q + 1;
	end 
	4'b1111: 
	begin
 	 	q = 4'b0000;
	end 
	default: 
	begin
 	 	q = 4'b0000;
	end 
	endcase
	
end

 
endmodule
