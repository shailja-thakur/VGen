// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
wire [3:0] q_out;

void main() {
  counter q;
  q_out = 0;
  while (1) {
    if (rst == 1) {
      q_out = 1;
    } else if (q == 12) {
      q_out = 1;
    } else {
      q_out = q_out + 1;
    }
    q.q = q_out;
    wait(clk);
  }
}
endmodule
