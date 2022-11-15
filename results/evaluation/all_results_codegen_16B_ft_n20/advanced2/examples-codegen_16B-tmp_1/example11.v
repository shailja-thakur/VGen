// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
parameter increment=1'b0;
parameter decrement=1'b1;
always@(*) begin
 q= count_out;
 end
 // duty cycle=50% 0 <= q < 10
 // duty cycle=50% 10 <= q < 20
 // etc.

always @(*) begin
 if(reset==1 & slowena==1)
 begin
 case(q)
 0:
 q=increment;
 1:
 q=increment;
 2:
 q=increment;
 3:
 q=increment;
 4:
 q=increment;
 5:
 q=increment;
 6:
 q=increment;
 7:
 q=increment;
 8:
 q=increment;
 9:
 q=decrement; // set to default state 14
 10:
 q=increment;
 11:
 qend
end
endmodule
