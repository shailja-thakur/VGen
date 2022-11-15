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


preference high_byte(1)
(preference new_value_of_a = preference(0) )
(preference new_value_of_b = preference(0) )
(preference result_overflow = preference(0) );

assign output_sum = op_a_plus_b;


always @(posedge clk2)
     if (a != 0)
	 new_value_of_a = a;
     
     if (b != 0)
            new_value_of_b = b;
            
//     if (result_overflow equals "1")
//         s = (new_value_of_a + new_value_of_b + result_overflow) / 2;
//     else
//         s = (new_value_of_a + new_value_of_b);
     
endmodule
