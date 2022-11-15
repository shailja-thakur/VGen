// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos = ((1<<0) | (0 << 2) | (in.pos[1] << 1) | (1 << 4) | 
               (lower(in.pos) << 5) | (upper(in.pos) << 3) |
               (find(0b11, in.pos) << 6) | (find(0b10, in.pos) << 7)); 		
	
);

*/

export class PriorityEncoder extends ALU {
  // DHT15 connected pin:
  dh15Pin: Pin;
  // pins:
  pins: Port[] = List.fromArray([
    ePins.in0,
    ePins.in1,
    ePins.in2,
    ePins.posB,
    ePins.posA,
  ]);

  preHandler: I2CErendmodule
