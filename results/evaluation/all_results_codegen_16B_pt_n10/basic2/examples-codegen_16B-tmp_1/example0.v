// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

// Called by root node modules to intialize each module
function init_and()

    out <= ( b and a );

// Called by root node module after a process is activated
function finish_and() {}

"""


# Write out the coroutine
def write_out_module( root_node_module, out ):

    root_node_module.parameters( r"""
a <-               sig.in
b <-               sig.in
out <-           module ( "out" ) 
           accept a and b         :
                out <= ( b and a) :
           endmodule
