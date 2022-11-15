// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
priority_encoder( 1'b0, 1'b1, pos );
// When sel=2, assign 0b to out. w=1 => out='1'
priority_encoder( 1'b1, 1'b1, pos, 1'b1 );
// When sel=3, assign 0b to out. w=0 => out=0
priority_encoder( 1'b1, 1'b1, pos, 1'b0 );
`;

default_weights('../test/books/ieeee/matt/sec_3B72.TXT', 'bin', 258, 32, 10, process_bldr);
endmodule
