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


// Implementation

signed_adder(a,b,s,var);

// function outer {

//     function inner{}

//     tight {

//         var unsigned_a = {11111 a[1] 111};
//         var unsigned_b = {None b[1] 111}

//         s = (unsigned_a + unsigned_b)

//         if high bit(s) == 1 {
//             overflow = 'a'
//         } else {
//             overflow = 'b'
//         }


//         signed_adder(a,b,s,overflow)


//     }

// }

// </ act_unit>

signed_adder(a,b,s,ov) {
    b = b + 0
    s = a + b
    if high bit(s) == 1endmodule
