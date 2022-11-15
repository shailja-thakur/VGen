// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @ (posedge clk) begin
 if(reset) begin
q <= ui0;
 end
 else begin
 if(slowena && q != 9) q=q+1;
 end
end

// On the positive edge of the clock if q is 9 then set it to 0.
// (clock is slow being 10kHz and data is at 15kHz.)
always @ (posedge clk) if(q==9) q<=0;
endmodule
