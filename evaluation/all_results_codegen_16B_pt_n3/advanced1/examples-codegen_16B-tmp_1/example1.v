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


signed_adder (a,b,s#,overflow); 
===============================================================================
INPUT:  a = 00001111 1100000000 00000000
          b = 0000000000000000 11111111 00000000 00010000
          s = 0000000000000000 0
          overflow = 

OUTPUT A:       s = 00000111 1100000000 00000000
               overflow = None

OUTPUT B:       s = 00000111 1100000000 00000000
               overflow = None

FINISHED: Thu Apr 24 11:29:54 2015
"""

import sys
from pschars import *
from neta import is_neta

class Cell(object):
    def __init__(self, owner, name):
        self.owner = owner
        self.alni = [int(c,2) for c in name]
        if len(self.alni) > 0:
            endmodule
