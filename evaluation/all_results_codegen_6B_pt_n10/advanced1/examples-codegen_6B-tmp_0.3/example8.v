// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low


// The signed adder is implemented as a state machine. 
// The state machine transitions from the initial state to the final state when the input is added. 
// The input is added to the output when the state transitions to the final state. 
// The state machine transitions from the final state to the initial state when the input is subtracted. 
// The input is subtracted from the output when the state transitions to the initial state. 

always @(posedge clk)
begin
  if (state == 0)
    state = 1;
  else if (state == 1)
    state = 2;
  else if (state == 2)
    state = 3;
  else if (state == 3)
    state = 0;
  else
    state = 0;
  if (state == 3)
    s <= a + b;
  else if (state == 2end
endmodule
