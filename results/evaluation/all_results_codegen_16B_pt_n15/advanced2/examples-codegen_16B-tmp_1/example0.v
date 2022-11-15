// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk or negedge reset) begin 
  if (reset == 1 && slowena == 0) q <= [2:0] 0;
  else if (ena == 1 && q != 2$1) q <= [q_sync_range : q_sync : q_counter_half_cycle] [q + 1 : q_number_of_zero_cycles];
end

 
// ----------------------------------------------------------------------------

always @(posedge clk) begin
  if (event == 1) 
  {
    // Reset the countdown clock
    if (cena == 1)
    {
      q <= 0;     // Skip entire decade
      cena <= 0;  // Skip, then go to next decade
    } 
    else if (reset == 1 && slowena == 1) 
    {
      q <= 0;
	  // 
end
endmodule
