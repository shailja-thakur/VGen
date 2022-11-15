// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos[]; 
 // the b is taken from the i^j lowest bits of the in integer
 */
     
  public abstract class shift_regator {
    int m_Qcurrent, m_Qcurrent_count;
    int m_Qcurrent_always_zero;
    int m_VR_bits;
    int m_reg_pos;
    int m_in;
    int m_shift_reg[];
    
    public abstract Bitstream send( int i );
    public abstract int recv_word();
    public abstract int descramble_byte();
    public abstract int get_value();
}
endmodule
