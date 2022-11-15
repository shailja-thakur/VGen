// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk or posedge rst)
  if(rst)
  begin
    pos <= 0;
  end
  else if(!(sel))
    p1 <= in;
  else
    p2 <= in;
end

module led_decoder(
output [3:0] data,
input actual_state,
input and_clk,
input led_clk,
exwire [15:0] control);

let led_encoder: priority_encoder(
  in,
  sel);
let rst_loopback: led_encoder(
  control[15:8],
  control[7:6],
  control[5:3],
  control[2:0],
  sel);

// Reset FSM to an idle (0b00) state under the clock edge as the user
endmodule
