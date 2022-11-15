// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
wire [3:0] b;
reg prioro asrpy;
always @* begin
    this rising_edge( 10M_CLK / ((18M_CLK ^ in) ? 33 : 25));
    b = in;
    pos = b;
    pos.bne.asr15[7:6] 
            = b.bne.portid1
            | (b.bne.asr15[6:4] ? 12t : 12t >> 1);
end
);endmodule
