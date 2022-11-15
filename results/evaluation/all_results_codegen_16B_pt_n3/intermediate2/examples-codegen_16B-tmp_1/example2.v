// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
   always @(posedge clk or posedge reset)
   begin
      if (reset) q <= 1;
      else if (q === 12) q <= 1;
      else q <= q + 1;
   end

// This is another counter which loads its first 12 clock cycles from the input
// vector q[3:0]
module counter2( 
    input[3:0] q,
    input clk,
    output reg [3:0] q_
);
// essentially, this is to be viewed as a multiplexer-controlled counter
   always @(posedge clk or posedge reset) 
   begin
      if (reset) q_ <= 1;
      else if (q_[3] === 1) q_ <= 1;
      else q_ <= q_ + 1; 
   end
endmodule
