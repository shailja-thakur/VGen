// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @ (posedge clk) priority_encoder(`INIT')
  out[1:0] = 0;
  priority_encoder(sel)
  begin
    if( in[1] && in[2] )               lane01 priority; 
    else if( !in[1] && !in[2] )        lane02 priority;
    else                            lane12 priority;
    priority_encoder(sel) <= s_low && reg_enable;
  end
end
`;

const checker = checkerLite
    .dataOut(regMux.dataOut)
    .dataIn(1)
    .resetOut(regMux.resetOut)
    .enableIn(regMux.enableOut)
    .readIn(1);

const assertAndCheck = (memory, expected, expression, expOrTrue) =>endmodule
