// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
"""

for out in tuples:
	str += " module { unit({DMA}) new({outputs({ "
	for down, out in enumerate(out):
		if not (down+1)==len(out):
			str += "{ \"target_{0}\" , $FROM={0} , $TO={1} };\n".format(out[down],out[down+1])
	str +="});}\n"

str+="endmodule
