// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
assign q = ( q == 12 ) |
    ( reset == 0 && q == 1 ) |
    ( q + 1 < 13 );
"""
    )
for i in range(12):
    file.write('    assign {} = {}\n'.format(str.numberic_literal(i+1),str.numberic_literal(clamp_values[i])))


# Setting inputs
file = open(outFile, 'w')
file.write('// This is a counter that counts from 1 to 12\n')
for i in range(12):
    file.write('    default_input {}_plus_7= 7{};'.format(str.identifier(i+1), str.numeric_literal(clamp_bits[i])))
file.write('\n')
file.write('    reg [7:{}] {}endmodule
