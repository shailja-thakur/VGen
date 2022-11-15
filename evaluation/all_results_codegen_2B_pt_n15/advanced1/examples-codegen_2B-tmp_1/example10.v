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


behavior Adder:
    handler overflow_init
    entry
        clk <= led, clk => 1
    end
    
    msg a, b, result_s, result;
    reg [7:0] result_tmp, i;
    assign result_tmp = result = a[7:0] + b[7:0];  
    always @ ()
        clk <= led
    end    
            
    sign_calc_msg(a, b, result_tmp);
    
    result_s[7:0] = result_tmp[7:0]; 
 
    if((a[7:0] < 0 && b[7:0] < 0 && result_tmp < 0) ||
       (a[7:0] > 0 && b[7:0] > 0  && result_tmp > 0))
                overflowendmodule
