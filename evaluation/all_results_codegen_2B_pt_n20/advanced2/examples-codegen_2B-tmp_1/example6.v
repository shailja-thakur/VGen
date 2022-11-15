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
    if (slowena == 0) {
        q = 0;
    } else {
        if (reset == 1) {
            q = 0;
        } else if ((slowena == 1) and (q < 9)) {
            q = q + 1;
        }
    }
end


// Multiply by 10 and convert to decimal notation.
task ten2dec_slow;
always @ s_pstr
begin
    case (q:integer) // get long
        assign "0." + dec(q) + pstr; // convert integer to str
    end
end


// Divide by 10 and convert to decimal notation.
// In the case of generically integer division, each output comes in BGCC package as an unsigned integer, so we need to modulo 10 on each one
// here too.
taskendmodule
