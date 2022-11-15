// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign x to out. 
// When sel=3, assign y to out. 

wire [4:0] x, y;

// The following a to b logic is in the data path.
wire [4:0] a_dpath;
wire [4:0] b_dpath;

always @* begin
    a_dpath = a;
    b_dpath = b;
end

always @* begin
    // First set a to out.
    if (sel == 1) 
        a_dpath = b;
    else if (sel == 2) 
        a_dpath = x;
    else if (sel == 3) 
        a_dpath = y;

    // Then set b to out.
    if (sel == 0)
        b_dpathend
endmodule
