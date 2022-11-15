// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (others=>in_valid, !pos ) 
 {{0'd(pos[!(in & 3)])<<0}pos<=11}, 
 // log from: 3 bits including the MSB and bits required for ordering!
 ldb0 cas3, [mpnat.mem, in, pos]#1 ; 
 // go past the MSB in the next line
 cas3_bits.l  [pos]#3, pos < 5, (in &~pos[2L])>>5 | (in & pos[3L]) << 5 ; 
// dpb only map 4 bits and 'structadram#10' covers 4 bits
 cas3_low.l typos 0 4, b #0
 // 'codeword' only maps 0..31
	sc_logic r##(1)[31],w###(0); 
 w##(0) <=endmodule
