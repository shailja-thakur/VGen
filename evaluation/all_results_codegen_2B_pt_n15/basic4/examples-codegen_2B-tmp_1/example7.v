// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.

wire [3:0] sel1,
                sel2,
                sel3;

genioutput a_[seg_col*3:seg_col*4] Z_a; 
genioutput a_[seg_col+2 :                          seg_col*2+4],
             a_[  0:seg_col  ]; 

genioutput b_[seg_col_3  :3*seg_row_2  ], 
             b_[  0:seg_row_1 *3+3*3*4], 
             b_[  6:3*seg_row_2 ]; 


reg [3:0] ia, ib;
reg [3] s; 

reg src_a, src_b, out_c;

mux out;
endmodule
