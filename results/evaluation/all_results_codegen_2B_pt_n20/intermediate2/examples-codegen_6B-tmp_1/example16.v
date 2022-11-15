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
always( clk ){
  if (reset) q = 0;
  else if (q == 12 ) q = 1;
  else q <<= 1;
}

//constants:
const reg [3:0]  r = {
    [1:0] = 0b01,
    [2:0] = 0b10
};

//constraints:
always @(posedge clk) begin
   r[1]   <= q[2];
   r[2]   <= q[1];
end

endmodule
