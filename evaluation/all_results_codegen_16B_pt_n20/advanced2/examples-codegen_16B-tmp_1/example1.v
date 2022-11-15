// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or ~reset)
    begin
      if (~reset) q <= 0;
    end

// On the positive edge of the slow clock enable:
// On the falling edge of the ena input: if q is not 9, increment q by 1; otherwise no change to q.

always @(posedge slowclk or ~(slowena and slowen))
    begin
      if (slowena and ~reset) q[1 downto 0] <= q[1] + 1;
      end

endmodule
