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

 end

// assign the core output s to the used_overflow wire. 
// Carry only occur when the core output s is low and the output overflow is high. 
 // assigned the temp overflow wire to the output overflow



// tested the functionality of the core signed adder from its functionality
// a and b negative numbers did not throw a warning of signed overflow with the warnings 
// niterated 50 times
// verify No more warnings of signed overflow were throw for positive numbers
// Verify warnings of signed overflow were throw when you assign a or b negative number to the core output in the ln undt_tb.v file that this module is based on and running from in ither simulation result enviroment.



endmodule
