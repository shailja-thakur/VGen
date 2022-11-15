// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always@(posedge clk) begin
    case low(slowena) : 
        if (RESET == 1'b1) q[0] = 0;
        else if clk == q'last && (1'b1 == VPRES/2) : q[1] = q[1] + 1; // Clock one digit = faster! Purposely an OR with QB * 16 instead of QB bits.
        else if clk == q''last && (1'b1 == VPRES/2) : q[2] = q[2] + 1  ;
        else
            default: o <= q;
	end

    	if (RESET == 1'b0) writeq(int(q));
	// If clk is 1, add 1 to the outtermost q-bit and reset the rest. Skip if the q is full.
	//if (RESendmodule
