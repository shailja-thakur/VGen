// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
assign {out[0:0], out[0:0]} = dupa(sel);  assign {out[0:0], out[0:0]} = dupb(sel);

// Positonal optimization
module opt1              (.x(sel,.y(a, b), inando));
module opt2              (.x(sel,.y(a, b), inbno));


  always_ff (sel) {
    opt1 .x (.x = ~andno [4:0] (.x = ina [(0) (3)], ^sel),
    opt2 .x (.x = ~andno [4:0] (.x = inb [(0) (3)], ^sel),
    .y (a,b) (.y = ino, .x = ino),
    .y (a,b)endmodule
