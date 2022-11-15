// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = if (in[1]) { 
pos[1] = '1'; 
pos[0] = '0'; 
} else { 
pos[1] = '0'; 
pos[0] = '1'; 
}; 
// When sel=0, assign b to out
assign pos = if (in[0]) { 
pos[1] = '1'; 
pos[0] = '0'; 
} else { 
pos[1] = '0'; 
pos[0] = '1'; 
}; 
// When sel=0, assign b to out
assign out = b; 
// When sel=1, assign b to out
assign out = if (in[0]) { 
out[1] = '1'; 
out[0] = '0'; 
}endmodule
