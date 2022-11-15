// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// I expect this to work regardless of the clock polarity, e.g. you never count q==9. 
// So you will need to match the latency of slowena (positive edges only)."


always @(posedge clk) 
	begin 
	if (slowena==1'b1) 	
	begin
	if (reset==1'b0)	
	q <= #1 4'b0;
	else
	begin
	if (q==9'b1111_1111_1111_1111)
	q <= #1 4'b0;
	else
	q <= #1 q + 1'b1;
	end //end else slowena
	end //end if slowena 
	end //end of always








end
end
end
endmodule
