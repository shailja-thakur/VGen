// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Register a multiplexer as a class, which can be instantiated via 
// the multiplexer's 'create' method.
class multiplexer 
{    
    // Read a multiplexer's inputs.
    void read() 
    {
        a = read_bits(4);
        b = read_bits(5);
    }
    
    // Write multiplexer's output.
    void write() 
    {
        write_bits(0, 4);
        write_bits(0, 5);
    }
}

input i;
output o;

multiplexer m1;

// Instantiate the multiplexer using the 'create' method.
multiplexer m2 = mux(i, m1, sel);

// The multiplexer can be used in two ways:
// (1) aendmodule
