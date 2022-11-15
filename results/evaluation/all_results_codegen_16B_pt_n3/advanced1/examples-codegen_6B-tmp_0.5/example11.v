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


#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#define MAX_SIZE 8
#define MAX_VAL 0x7f
#define MIN_VAL 0x80
#define OVERFLOW_VAL 0x80

void signed_adder_helper(int a, int b, int s, int overflow) {
  if(a < b) {
    s = a + b + overflow;
  } else {
    s = b + a + overflow;
  }
}

int main() {
    int a = 0;
    int b = 0;
    int s = 0;
    int overflow = 0;
    int i = 0;
    while(i < MAX_SIZE) {
        scanf("%d", &a);
        scanf("%d", &bendmodule
