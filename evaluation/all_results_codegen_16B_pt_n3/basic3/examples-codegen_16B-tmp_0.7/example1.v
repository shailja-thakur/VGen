// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign a to out
always @( posedge clk ) begin
        sel <= ~in & out;
        if ( sel )
          {
            out <= 1'b0;
          }
        else
          {
            out <= 1'b1;
          }
end

//
// Priority encoder using a 3-bit priority and with 8 inputs, the priority encoder outputs 4-bit data
//
module priority_encoder_8 (
input [3:0] in,
output reg [2:0] out);
// When sel=1, assign b to out
// When sel=0, assign a to out
always @( posedge clk ) begin
        sel <= ~in & out;
        if ( sel )
          {
            out <= 1'b0;
          }
        else
          end
endmodule
