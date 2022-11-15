// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
reg [4:0] out;
always @(  or sel )
begin
    case ( sel )
        5'b00000 : out = in0;
        5'b00001 : out = in1;
        5'b00010 : out = in2;
        5'b00011 : out = in3;
        5'b00100 : out = in4;
        5'b00101 : out = in5;
        5'b00110 : out = in6;
        5'b00111 : out = in7;
        5'b01000 : out = in8;
end
endmodule
