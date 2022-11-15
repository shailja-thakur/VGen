// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
out <= in;
"""
def module_library( name,tok,tok_e ):
	return %{ 'NAME': name,
		'INPUT':input,
        'OUTPUT':output,
        'E_LIBRARY': e_library,
        'H_LIBRARY': h_library,
        'C_LIBRARY': c_library,
	    'TOK':tok,
	    'TOK_E':tok_e }
endmodule
