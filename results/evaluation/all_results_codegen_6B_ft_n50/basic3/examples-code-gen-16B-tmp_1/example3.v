// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign out2 = (sel0 == 1)? b : a;
// You can also write this equivalently as:
always @ (*) // Se sensitivity list, trigger always on change
begin
    if (sel0 == 1)
        out0 = b;
    else  
        out0 = a;
end
a and b are input to the multiplexor. sel determines the output.
always @ (*) // This sensitivity list can be omitted, as it has been assumed as default
begin
    case (sel) // se is input to the case statement.
    0: out = a;
    1: out = b;
endcase
// Think of this as a big if-else
end
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos );
always @ (in)
    case (in) // seendmodule
