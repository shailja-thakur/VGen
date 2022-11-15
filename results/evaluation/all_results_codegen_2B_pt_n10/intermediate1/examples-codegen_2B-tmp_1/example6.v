// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

"""


def main():
    # half_adder function implementation.
    # input:
    #   a = a high register [ 15:0 ]
    #   b = b high register [ 15:0 ]
    #
    # output (1):
    #   cout = congtate [ 15:0 ]
    #
    # output (2):
    #   sum = sumlow [ 14:0 ]
    #
    a = hls.Constant(VAL_ADDER_A * 0.500)     # a >> m
    b = hls.Constant(VAL_ADDER_B * 0.500)     # b >> m
    mult_a = a.mult{a};
    add_in = a.add{0, mult_a}                     # add high from a and mult_a (393)
    16bit_compendmodule
