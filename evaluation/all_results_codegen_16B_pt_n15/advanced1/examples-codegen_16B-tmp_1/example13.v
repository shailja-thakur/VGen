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


// We are the highest level sim operator and thus can enable the sim halt signal
assign #halt = 1;

s = (a > s) | (
  ((a == ~s and b >= s) or (a >= b and a != ~s)) and overflow) | overflow == 1;
    
// All visible signals and state variables are simulated


// BOOT
always @() begin
  signed_adder.s0 <= s;
  signed_adder.ovf <= overflow;

  // When using boot designs using the existing sim_main environment, the period of the oscillator is specified. However,
  // using the on_cycle_end signal, the period can be set to any number of cycles.
  // In simulation, a delay from the rising edge to the start of a period is the number of cycles that can be simulated
  // before the oscillator starts oscillation.
end
endmodule
