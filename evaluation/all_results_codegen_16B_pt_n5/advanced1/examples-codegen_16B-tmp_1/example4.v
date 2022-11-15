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


assign s = (a + b);
    
assign overflow =	a_sign != b_sign && ((s >= 0x100 && a_sign)							// signed overflow occurs if the most significant bits of {a, b} are low and the most significant bit of s is high

// or if {a, b} > 0x80 and the most significant bits of s are low
                ||   ((s >= 0x100 || a >= 0x80) && !a_sign)        
                ||   ((s >= 0x100 || b >= 0x80) && !b_sign) 	
       );
'''

    return "\n\n".join(wrap_code(asm_code,line_width=1024, indent=0,
                                          tab="    "))


if __name__ == "__main__":
    print(add_code("0000endmodule
