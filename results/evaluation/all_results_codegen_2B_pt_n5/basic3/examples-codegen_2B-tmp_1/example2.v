// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
reg        bit b;
assign b = in[pos];
// reset error state
iaf_err l_err;
wire l_ready;
inout      l_ready;
trigger fail_sel = t;
always @(p) req_ready = '0'; // when sel=0, from a low duty to high duty
always @(n) {
    if (in == '0') {
       l_err == 0;
       l_ready = '0';
       req_ready = '0'; 
    }
    else {
       l_err == 1; 
       if (some (fail_sel)&& (fail_sel == '1'))
         l_ready = '1';
       else
         l_ready = '0';
       req_ready = '0';
    }
}
always @(p) {
endmodule
