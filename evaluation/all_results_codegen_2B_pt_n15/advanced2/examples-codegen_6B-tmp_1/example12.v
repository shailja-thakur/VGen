// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk) begin
  if (reset) begin
    q <= 0;
  end else if (slowena) begin {
   // $(q) is high – if (q = 9) then (q = 0).
   if (q == 9) q <= 0;
   else q <= q + 1;
   } 
  end;
end


#define parallel_counter_init main_fifo
monitors slow_monitors
parallel_counter_init;

module counter(
    input clk,
    input slowena,
    input en1a,
    input en2a,
    input reset,
    output reg [3:0] q,
    reg [19:0] count
    );
#define qa 0x3ffffff
#define qb 0x01111111
#define qc 0x08endmodule
