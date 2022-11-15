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

  
if ((a[7] AND b[7]) EQU 0) EQU signed_overflow
  s[7:0] = a[7:0] + b[7:0]
else if ((b[7] AND a[7] SLE signed_overflow) OR ( a[7] AND b[7] EQU 0))
  s[7:0] = unsigned_value(-1) + unsigned_value(0)
  
  
end


instance signed_adder_followup(signed_adder(64, 30, 7, 0) & a, b, overflow & s);

def_signal(dout, s, overflow);

      
println (dout {
  "Hello", s = 7
# length(signed_adder_followup) = 56
});
print(ruleset ((jack()) = s));
endmodule
