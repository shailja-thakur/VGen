// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (in[3] or in[4] or in[5] or in[6] or in[7] or in[8] or in[9] or in[10]) 
begin :
   #0 = ( in <> 0 ); // Non-zero or greater
   #1 = ( in <> 1 ); // Non-zero or greater
   #2 = (~pos) ? in : out;
end
);

/* ============================================================
 * //- Begin of mesa
 * ============================================================
 */
bsf_reg priority_encoder_control; // 1 = first sample


/* ============================================================
 * //- End of mesa
 * ============================================================
 */

endmodule
