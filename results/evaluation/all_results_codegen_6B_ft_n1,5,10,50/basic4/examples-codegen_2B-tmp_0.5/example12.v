// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Create a multiplexer that assigns inputs to outputs.
mux a_mux, b_mux, sel_mux;

initial begin
    a_mux = 0;
    b_mux = 0;
    sel_mux = 0;
end

// Create a multiplexer that assigns inputs to outputs.
mux a_mux, b_mux, sel_mux;

initial begin
    a_mux = 0;
    b_mux = 1;
    sel_mux = 0;
end

// Create a multiplexer that assigns inputs to outputs.
mux a_mux, b_mux, sel_mux;

initial begin
    a_mux = 1;
    b_mux = 0;
    sel_mux = 1;
end

endmodule
