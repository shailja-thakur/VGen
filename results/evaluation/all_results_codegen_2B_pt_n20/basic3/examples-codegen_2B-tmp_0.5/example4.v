// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge in)
begin
  pos = (in[0] << 0) + (in[1] << 1);
end
);
*/

void test_priority_encoder() {
  priority_encoder in = (priority_encoder) 0;
  priority_encoder out = (priority_encoder) 0;
  while(1) {
    in = (priority_encoder) (in | (in >> 1) | (in >> 2) | (in >> 3));
    out = (priority_encoder) (out | (out >> 1) | (out >> 2) | (out >> 3));
    if (out == in) {
      cout << "passed" << endl;
    } else {
      cout << "failed" << endl;
    }
  }
}
endmodule
