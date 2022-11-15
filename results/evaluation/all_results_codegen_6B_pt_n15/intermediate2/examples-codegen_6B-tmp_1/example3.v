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
always_comb
    begin
	if (reset) begin	// case 1
	    q <- 1;
	    end
	else begin		// case 2
	    if (q[2]) begin
	    	q[2] <- 0;
	    	end
	    else begin
		q[2] <- q[0];
		q[2] <- q[1] + 1;
	    	end
	end
    end

endmodule
