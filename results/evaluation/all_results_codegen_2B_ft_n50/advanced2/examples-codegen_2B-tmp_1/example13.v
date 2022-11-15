// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// The final output will be whatever value of q results.

 always @ (posedge clk or posedge reset or posedge slowena) begin
 
 case ({reset,slowena})
 4'b1111: q <= 4'b0000; // reset
 4'b1000: q <= 4'b0000; //reset
 4'b1001: if (!slowena) q <= 4'b0000; else if (q == ~q) q <= q + 4'b1; //increment in the case of q wrap around
 endcase
 
 end

endmodule
