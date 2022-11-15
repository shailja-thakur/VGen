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


var d18 = signed_adder.Design(c1, b, s, overflow);

var sig = [0,1,2,3,7,8,15,16,31,32,63,64,127,128,255,256,511,512,1023,1044,2047,2048,4095,4096,8191,8192,16383,16384,32767,32768,65535,65536,16777215,16777216];

var ok1 = 1;
var tst1 = sig[2].add(sig[0].shl(255)).sub(sig[1].shl(1));
var sw1,sw2,ok2a,ok2b,toverflow;
for (4; 4 <= tst1; 4 = tst1) {
    
    if (endmodule
