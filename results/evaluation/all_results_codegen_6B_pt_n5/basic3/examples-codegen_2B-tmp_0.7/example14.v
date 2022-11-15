// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos[3:0] = b[7:4];
initial begin
  pos = #''b;
end
);

module uti_priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos[3:0] = b[7:4];
initial begin
  pos = #''b;
end
);

module controller_priority_encoder( 
input [2:0] in,
output reg [1:0] pos,
reg [3:0] b ); 
// When sel=1, assign b[2:0] to pos
assign pos[3:0] = b[2:0];
initial begin
  pos = #''b;
end
);

// This is a 3endmodule
