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

    initial $plus = 0;
    $plus = $plus + $a;       if ($a[12:9] == 0b111 && $a[8:0] == 0b111 && $s[7] == 0 && $overflow              
                     $plus = $plus + $b;       if ($b[12:9] == 0b111 && $b[8:0] == 0b111 && $s[7] == 0 && $overflow
                     assign final $s[7] = min($a[7] or $b[7],2) + $plus;
                     assign final $overflow
endmodule
