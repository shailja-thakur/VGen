// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk) 
begin 
	if (slowena == 1'b1 && reset == 1'b0 && q == 10'b0000000000)
	begin
	
	q = 10'b0000000001; // set max q to 1
	end 

	else if (reset == 1'b1) //if (reset)
	begin

	q = 10'b0000000000; //reset q to 0
	end
	else if (slowena == 1'b1 && q == 10'b0000000000) //if (slowena)
	begin
	
	q= q + 1'b1; // increment output q by 1
	end
end //always
end
endmodule
