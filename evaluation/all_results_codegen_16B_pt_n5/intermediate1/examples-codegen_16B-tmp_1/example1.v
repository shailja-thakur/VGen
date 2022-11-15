// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input range = [{0,0},{1,1},{-1,-1},{0,1}];

reg [3:0] sum;

assign { sum, cout } = ( {sum} + ({a[0]}{b[0]}), ({a[2]})cout({b[1]},sum) );

initial { sum=0; cout };

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

input a, b,
output {sum, carry}"""

def bitwise(inp, params): #pylint:disable = no-self-use
    """
    This block provides a basic bitwise logic implementation.

    Args:
        inp: Input array of values to be processed.
        params: un-used
    Returns:
        out: Theendmodule
