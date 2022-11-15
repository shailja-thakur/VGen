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

always@(posedge clk)
begin
if (!reset)
	begin //Case 01: Reset
	 q <= 4'b0001;	 
	end //BRAC 1
else if(q == 12)
	begin // Case 02: reach the 12th q or q <= q + 1
	 q <= q + 1;	 
	end //BRAC 2
else if(q < 12)
	begin //Case 03: Normal operation
	 q <= q + 1;	 
	end //BRAC 3

end //always
end
endmodule
