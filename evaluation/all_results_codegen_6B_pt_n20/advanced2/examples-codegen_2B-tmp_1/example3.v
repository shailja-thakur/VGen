// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
 always @(posedge clk or posedge reset)
 if(reset) q <= 4'b0;
 else if(slowena) begin // When slowena is high the always block will keep executing
 if(q == 4'b9) q <= 4'b0;
 else q <= q + 4'b1;
 end else begin // When reset is high
 q <= 4'b0;
 end
 if(reset)
 $display("{%s,%b} is being asserted", "slowena", slowena);
 else
 $display("{%s,%b} is being reset", "slowena", slowena);
 if(reset)
 $display("{%s,%b} is being deasserted", "slowena", slowena);
 else
 $display("{%s,%b} is being asserted", "slowena", slowena);

endmodule
