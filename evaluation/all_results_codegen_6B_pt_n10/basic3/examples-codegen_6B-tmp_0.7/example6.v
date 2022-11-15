// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
  begin
  begin
    case( in[2] )
      when 0 => pos = 1;
      when 1 => pos = 0;
    endcase
  end
end

// This is a 3-bit priority decoder. If the input bits are high, output is the 
// corresponding value. If none of the input bits are high, output is 0.
module priority_decoder( 
input [2:0] in,
output reg [1:0] pos );  
// When sel=0, assign b to out
always @(posedge clk)
  begin
  begin
    case( in[2] )
      when 1 => pos = 1;
      when 0 => pos = 0;
    endcase
  end
end

// These are the two priority encoder modules that combine to form the endmodule
