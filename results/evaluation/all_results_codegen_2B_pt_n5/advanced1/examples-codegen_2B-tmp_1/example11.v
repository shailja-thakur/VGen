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


def mybitset (xs):
  # Turn xs into a list
  res = []
  for x in xs:
    res.append( or ( x, ~x ) )
  # find index of highest bit.  a 1 means negative, a 0 means positive
  return maxvalue(res)
  
def bitnext(xs):
  return sum(mybitset(xs)) - sum( notxs )

def andbitset(xs):
  return [ x for x, xb in enumerate(mybitset(xs)) if xb == 1 ] 

                    
def addneg(a,b):
  # print a,b
  if bitnext(a) > bitnext(b):
          readhi = andbitset(b)
          readlo = andbitset(a)
          writhi = andbitset(a)
          endmodule
