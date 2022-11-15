// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
  begin
    case(sel)
        begin
            if(in[0]) out = 1;
            else out = 0;
        end
    end
end

// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
  begin
    case(sel)
        begin
            if(in[0]) out = 1;
            else out = 0;
        end
    end
end

module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign bendmodule
