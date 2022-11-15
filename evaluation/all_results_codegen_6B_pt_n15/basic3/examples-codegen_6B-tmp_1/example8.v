// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(*)
  begin
    if (!sel)
    begin
    begin
      cout << "M" <<("1"<<1) << endl;
      sel <= 1;
      cout << "S" <<("1"<<1) << endl;
    end
    else
    begin
      cout << "1" << endl;
    end
  end
endmodule
