// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// Finally release the clock.
reg [7:0] counter;
always @ (posedge clk) begin
 if (reset) 
 counter <= 0;
 else if (slowena) begin
 if (counter != 9)
 counter <= counter + 1;
 else
 counter <= 0;
 end
 else
 counter <= counter;
 end
reg isSet;
always @ (posedge slowena) begin
 isSet <= (counter != 9)? 1 :0;
end
always @ (posedge clk) begin
 if (reset)
 q <= 0;
 else if (isSet)
 q <= counter;
else
 q <= q;
end
endmodule
