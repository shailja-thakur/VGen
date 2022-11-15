// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 

wire one_bit;

initial out <= 0;
initial out <= sel;

always @(posedge clk1)
    // When a is clocked, toggle the one-bit state.
    out[4] = ~out[4];
    one_bit = (sel == 0) AND (out[4] == 0);

always @(posedge clk2)
    // When b is clocked, target all 1s in the data register.
    if (sel == 0)
        a[4] = 1;
    else
        b[4] = 1;
endmodule
