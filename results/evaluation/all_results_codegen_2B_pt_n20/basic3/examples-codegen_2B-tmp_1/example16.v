// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (sel == 1) begin
                    #print "in: " hex(in);
                    #print "pos=" hex(pos);

                    if (in[0] == 1)
                         pos[1] = 1;
                    else
                         pos[1] = 1;
                    if (in[1] == 0) pos[0] = 0;
                    else
                         pos[0] = 1;
                    #print "pos=" hex(pos);
end // sel=1;

wire [3:0] motor_pos;
wire [30:0] led;
wire a;

regregation [0:31] reg;
regregation [40:0] led;

reg bus={ range:+5,[0:31] };// stores init value of bus
reg us_pos={ range:+1,[2:2] };// stores init value ofend
endmodule
