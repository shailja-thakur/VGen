// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk or posedge slowdown) begin 
  if (reset)@(posedge clk) reset[3] = 1;
    else if (~reset == slowena) q[3] < 9;
    else q[3] = q[3] + 1;
end  

// On the past edge of the clock: 
// take the slow default output.
initial begin 
   prescale = 1;
   generated_sta_slow = 1;
   generated_sta_abs = 0;
end

initial left, Z = q[1:0] * prescale;
initial right, MinusOne = q[2];
         #---------------------
                non_linear
               #-----------
            slow_default
            #------------
                  output det
        RMux:
                   left = (left>>1) + right;
                   note = leftendmodule
