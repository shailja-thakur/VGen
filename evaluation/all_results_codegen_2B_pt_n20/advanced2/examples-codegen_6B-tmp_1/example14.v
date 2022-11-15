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
  if (reset)
  begin
    q <= 0;
  end
  else if (slowena and q <= 8)
  begin
    q <= q + 1;
  end
  else if (slowena and q > 8)
    q <= 9; //joe [9 => 1000/100] must have been estimated wrong!!!
  //else, do nothing
end

always @(posedge clk)
  if(slowena) begin
    evt2 "fast", delay=7 clk_period()
  end
end

endmodule
