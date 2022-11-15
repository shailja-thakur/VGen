// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Otherwise, only decrement the output q if the ena input is high and q is not 0.
 // If neither of these is true, never change q.

always @(posedge clk)
begin
 if (reset)
 begin
 q <= 4'b0000;
 end
 else
if (slowena)
 begin
 
	if (q== 4'b1001)
	begin
	 	q <= 4'b0000;
	end
	else if (q==0)
	begin
	 	q <= 4'b1001;
	end
	else
	begin
 	if (q == 4'b0)
	q <= 4'b1001;
	else
	q<=q-1 ;
	end 
	
end

end

 //NOTE: This module is not needed mostly. It is made to view a wire
 //endmodule
