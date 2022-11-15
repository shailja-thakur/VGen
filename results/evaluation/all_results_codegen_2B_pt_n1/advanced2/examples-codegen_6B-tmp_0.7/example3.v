// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
when (reset = '1') begin
  q <= 0;
end else begin
  if (slowena = '1' and q < 9) begin
    q <= q + 1;
  end else begin
    q <= q;
  end
end

// On the negative edge of the clock:
// if reset is high, reset the output q to 9. 
// Otherwise, only decrement the output q if the ena input is low and q is not 0.
when (reset = '0') begin
  q <= 9;
end else begin
  if (slowena = '0' and q > 0) begin
    q <= q - 1;
  end else begin
    q <= q;
  end
end

endmodule
