// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// When sel=2, assign a to out.
// When sel=3, assign b to out.

always @* begin
    if (sel == 1)
        b <= a;
    if (sel == 2)
        a <= b;
    if (sel == 3)
        a <= b;
end

// Generate a random number between 1 and 3.
always @* begin
//    a <= random(4 downto 0);
    a <= random(1:0) + 1;
end

// This block is the core of the design. It's called from the main.

// Destructive Sin Wave Generator.

module ds( 
        input [4:0] a, 
        output [4:0] b, 
        output [4:0] c, 
        selection [1:0] selendmodule
