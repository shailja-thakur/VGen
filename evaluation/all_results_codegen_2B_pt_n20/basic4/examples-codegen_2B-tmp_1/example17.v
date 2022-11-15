// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
// Locate out based on sel value.

wire fifo_fbar;
wire fifo_cbar;

input [8:0] dataa;
input rd_a;
input /rd_a_n count;
input [8:0] datab;
input rd_b;
input /rd_b_n count;
input [9:8] id;
dout rd_b_n;

//note xor seems totally incorrect
input [197:0] data;
input rd_z;
input /rd_z_n count;

function increment_rd_z();
{
    //rd_z_n + count = 1;
    if (count>0) incr(rd_z_n); //stop fsh_z from increasing its counter when one is above proper upper bound (let pulse happen betweenendmodule
