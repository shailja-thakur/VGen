// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge slowena)
begin
 if (reset)
 q <= 0;
 else if (slowena&&q<9)
 q <= q + q[0]+q[15]+q[30]/2;
 else if (slowena&&q==9)
 q<=0;
 else
 q<=q;
 end
 endmodule

// Create a fast counter that does not wrap or generate overflow,
// but just returns 1 and 0, respectively, when the src input is asserted.

module count_but_not_hard(
 
 maininput clk,
 on switched director,
 off cleared strings,
 sibling hidden input,
 worry about the value of the maininput since it may reset to high under the noise, but then the watchdog will risk rotting data.

// Machetal's ugly code.

120 bit_counter X(clk, on,endmodule
