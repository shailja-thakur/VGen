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
always @(posedge clk)
begin
  // first read counter and assign
  if (reset) q = 1;
  else if ( q[CLKcntr] == 2) {
    q(CLKcntr) = 1;
  } else {
    q(CLKcntr) = q[CLKcntr] + 1;
  }
end
); 

void interupt(
    input clk,
    input reset,
    output reg [10:0] smsr,
    output reg [4:0] stdcr,
    output reg [5:0] stdr,
    output reg [7:0] stdh,
    output reg [7:0] interrupt_status
);

reg [3:0]  q; 

request update_rom[0:1] rom_update; endmodule
