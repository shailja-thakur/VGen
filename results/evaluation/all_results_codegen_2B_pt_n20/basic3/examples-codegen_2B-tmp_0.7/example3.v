// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = sel[2:1] and in[0] or (sel[2:1] and in[1]);
// [0]:  [1]:  [2]:  [3]:  [4]:  [5]:  [6]:
//           [7]:  [8]:
always @(posedge clk)
begin
    if (sel[1] and not pos)
        out[0] = 1;
    else
        out[0] = 0;
end
);
interface ap_var_inout;
interface ap_var_inout;
interface ap_var_inout;
interface ap_var_inout;
interface ap_var_inout;
interface ap_var_inout;
interface ap_var_inout;
interface ap_var_inout;
interface ap_var_inout;
interface apendmodule
