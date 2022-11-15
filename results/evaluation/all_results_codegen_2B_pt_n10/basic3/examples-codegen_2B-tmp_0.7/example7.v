// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = 1'b00;
// When sel=0, assign b to out
assign pos = 1'b01;
assign b = out
  {
  // Select low or high
  sel = in
    {
    // Select low
    if (in[0] == 1) {
      out = 1'b00;
    } else {
      out = 1'b01;
    }
    }
  };

);
endmodule
