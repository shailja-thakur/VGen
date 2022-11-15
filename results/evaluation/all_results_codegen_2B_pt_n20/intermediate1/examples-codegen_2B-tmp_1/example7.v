// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum ); // three output ports: sum, carry status, and overflow bit


#incremented_output counter_output;
module counter_module(
input clk,
input reset,
input [3:0] counter_in,
output counter_output );


// A wire player that has room for 3 bits of supply!!!
module wire {
// aWire -> [3:0] input bus requires three bits
input aX;
input bX;
input sumX;
always @(posedge clk, negedge reset) begin
  if (clk == 0)
    aWire = `aX;
  if (clk == 1)
    bWire = `bX;
  if (clk == 1)
    denner( `aX, `bX, `sumX )
end

term denner(a, b, sum) {
  //endmodule
