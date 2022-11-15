// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @ (*) begin
case(q)
4'b0000:
if (reset) q=4'b0000;
else
if (slowena) if (q<9) q=q+1'b1;
endcase
end


// On the second positive edge of the clock after the first, always turn off the
// enable input and have q continue to count to 9.
always @ (posedge clk) begin
q[3]<=1'b1 & ~slowena;
q[2]<=q[3] & ~reset;
q[1]<=q[2] & ~reset;
q[0]<=q[1] & ~reset;
end
endmodule
