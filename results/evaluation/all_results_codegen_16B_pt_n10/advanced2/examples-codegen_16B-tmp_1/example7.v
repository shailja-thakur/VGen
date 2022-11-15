// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk or negedge reset or slowena) begin:
  if (reset) q <= {0,0,0};
  else q <= q + 1;
  if (slowena && (q % 10) < 9) q <= {q%10,q%10,q%10};
end;

always @(posedge clk or negedge reset or slowena) begin:
  if (reset) q <= {0,0,0};
  else q <= q + 1;
  if (fastena && (q % 10) == 9) q <= {q%10,q%10,q%10};
end;
endmodule
