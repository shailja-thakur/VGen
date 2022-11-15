// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

output [4:0] out;


assign a[3:0] = (/ (a = b)
/);

assign out = [4:0];

// Call the multiplexer as an array of individual 
// pixels.  A direct (un)assignment is not allowed.
assign a( [1:0,2:3,3:1] );


// Multiplex pin 5 with 8 
// Multiplexers with multiple wires/inputs. 
assign b[5:3,0:5] = [/ (a in 4:0)
/];

fudgebaike

assign a[0:2] = ({a00,a01});

// For fudgebaike multiplexer rules:
// add a 00 
// add a 01 

endmodule
