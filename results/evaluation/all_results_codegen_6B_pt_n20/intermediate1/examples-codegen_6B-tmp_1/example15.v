// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
half_adder( 1, 1, cout, sum ) 
end

module half_adder_atomic(
	inputs( a, b ),
	outputs( cout, sum ),

	half_adder,
	carry - 2 | carry, 
	carry-1 | carry,
	carry,
);
"""
                          )

def append_wrap(lines):
	if not lines:
		return []
	pre = lines[-1]
	if inspect.iskeyword(pre):
		return lines
	last_line = pre.split('\n')[-1]
	if '=' not in last_line:
		return lines + ['wrap({})'.format(pre)]
	values = last_line.split('=')
	pre = "{} = {}{}".format(values[0], re.sub(r'([^)).endmodule
