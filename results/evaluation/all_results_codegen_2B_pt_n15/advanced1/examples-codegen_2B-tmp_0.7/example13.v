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


void main() {
  const int a_max = int(0xFF);
  const int b_max = int(0xFF);
  const int s_max = int(0xFF);

  int a = a_max - 1, b = b_max - 1;
  int s = 0;
  bool overflow = false;

  while (a > 0 || b > 0) {
    if (a > 0 && b > 0 && a > b) {
      s += a;
      a = a_max - 1;
    } else if (a > 0 && b > 0 && a < b) {
      s += a;
      a = a_max - 1;
      overflow = true;
    } else if (a > 0 && b == 0) {
      s += a;
      a = a_max - 1;
endmodule
