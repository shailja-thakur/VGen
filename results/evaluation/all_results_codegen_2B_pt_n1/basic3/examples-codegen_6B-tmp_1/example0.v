// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (posedge clk) 
    // Write out the input priority chip command, and clock in the input mux command
sum_input_sel_funs {
    static const int sel_cnt = 32;
    static const bool sel_or = false;
    static const bool sel_and = true;
    output logic sel_and sel_or ^ in AND priority_sel[7]^priority_sel[6];
} sum_input_sel_fun( priority_sel[7], priority_sel[6] );
always @( 
        negedge clk 
)
begin
    const res_type res_bits = sum_input_sel_fun_val;
    res_type npos = ~res_bits[1..0];   // nibble to position of our nonpositive edge
    const int nbits = 8*end
endmodule
