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
logic [3:0] arr[$bits(clk)-1:0];

reg [3:0] q;

defparam logic slowena;
defparam logic [$bits(slowena)+1:0] ena;
defparam logic [$bits(clk)]: ena, reset;
defparam reg [$bits(q)]: writable q[1:0]

always begin
   if (reset or !slowena) q <= 0;
   else if (ena and q < 9) q <= q + 1;
   else q <= q; // second output "model"
end

// In cases with only changing the clock speed The design is simpler and more
// compact.
subtype high_speed is logic [2:0];

// This design is implemented only in mipsendmodule
