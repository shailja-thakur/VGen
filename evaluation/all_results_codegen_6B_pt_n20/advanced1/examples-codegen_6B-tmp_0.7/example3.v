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


//An example from http://www.hushcode.com/forums/viewtopic.php?f=70&t=45482
/*
   int
   main() {
   unsigned char a, b, c, sum;
   signed char s;
   int i;

   a = 0x06;
   b = 0x02;
   c = 0x00;

   s = a + b + c;

   // print the sum
   for (i = 0; i<7; i++) {
      printf("%02X", s);
   }
   printf("\n");
   // print the count of the bytes used by the sign byte
   for (i = 0; i<7; i++) {
      printf("%02X", s & 0x80);
   }
   printf("\n");
   }
*/
//This isendmodule
