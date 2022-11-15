// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
assign out [4:0, select == 0] = a [select], [select == 1] = b[select];

// A5-4:
entity io_signal_1;
port (i_in)
signal i=[0:0];
// this could be a synchronous signal port
process(plus)
signal i=1 [i>0];
endprocess

ecu connect io, io_signal_1, 
            (inout a), b,
            (inout sel),(inout out);

endmodule
