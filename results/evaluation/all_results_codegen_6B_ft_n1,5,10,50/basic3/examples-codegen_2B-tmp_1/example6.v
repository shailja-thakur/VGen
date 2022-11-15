// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
nAND 
input 1'b1;
always @*
nNAND 
input 1'b0;
assign pri 0 xor ( in[1] or in[0] ); 
assign pos ( ~(pri & 7) ); 

//+v := 0, if 0x is active in (in), else: encodes the corresponding bit (pos) of (in), msb first, stored through enable
assign reg [pos] xor ( in[1] and in[0] ) ; 

// ----------------------------------------------------------------------------------------
*/

ize * &
Byte4::high_width( ), uint32_t const & width )
{
    if ( src().InHighWidth( ) ) {
        return high_width_include;
    }
    else{
        return ( uint32_t( high_endmodule
