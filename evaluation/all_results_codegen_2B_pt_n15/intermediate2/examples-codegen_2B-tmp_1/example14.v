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
initial begin
  counter.q<1> = 0;
  // when a rising edge on clk occurs, output q[t1] if t1 is the first edge 
  counter.q<2> = (clk==rst);
  // everything else remain untouched by the library 
  if(counter.q<>12) counter.q<+=1;
  
end 
  
// Counter 2, an alternating engine 
module counter2( 
    input clk,
    input reset
);
 // initialize to 0, always on the falling edge of the clock, count from 0 to 12 
  input [3:0] c2;
  reg [3:0] q2; 
 begin
   counter2.c2<1> = 0;
   // when a rising edge on clk occurs, output q[t2] if t2 is theend
endmodule
