// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

// Generate a random number from [0,255)
random_number random_number;

// The random_number module uses the random base class in random.h.
module random_mod ( 
input [5:0] n,
output [1:0] out ); // n is one less than the number of inputs
clock mod_clk;

begin top:
    random_number :: output [i/wCn - ((n / wCin - 1) to 1)- wCn + i/wCn - 1]
    out <= random[n[wCin - 1] to mod_clk](14)[i/wCn - ((n / wCin - 1) to 1) - 1];
    wait;
    select out <= a[wCin - 1]; 
    out <= 0 x 10 in[wCin - 1end
endmodule
