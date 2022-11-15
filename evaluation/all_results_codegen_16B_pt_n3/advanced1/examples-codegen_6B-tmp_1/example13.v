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


always(a, b, s, overflow, o) begin
    case input a, b, s, o, overflow is
        s := a + b;
        case absolute(s) > 0x8000 & absolute(s) < 0x7fff:
            if input overflow is high then
                incbin "0801_addoverflow.binc" was off, when it was on, everything was ok
                overflow:="00";
            else
                copy s into overflow;

        // b is larger than a AND c is smaller, the equation a + b = a + c
        else if isdigit(s & b) then
            s := a + b;
        // b is smaller than a AND b is high, the equation b + c = a + b
        else if isdigit(a & b) then
            s := b + a;
        // a is largerend
endmodule
