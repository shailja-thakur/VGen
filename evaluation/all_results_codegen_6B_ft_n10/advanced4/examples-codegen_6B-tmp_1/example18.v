// Design a 64-bit arithmetic shift register, with synchronous load. 
// The shifter can shift both left and right, and by 1 or 8 bit positions, selected by amount.
module advshift(input clk,
input load,
input ena,
input [1:0] amount,
input [63:0] data,
output reg [63:0] q); 
// when load is high, assign data[63:0] to shift register q.
// if ena is high, shift q.
// amount: Chooses which direction and how much to shift.
// 2'b00: shift left by 1 bit.
// 2'b01: shift left by 8 bits.
// 2'b10: shift right by 1 bit.
// 2'b11: shift right by 8 bits.





variable timing;


// -----------------Main---------------------------------------//

always @(posedge clk) begin
  timing = rising_edge(cnt) ? -1 : 1; 
  if (timing < 0)
    timout <= 1'b0;
  else if (timing == 1) {
//     follow(termine);
    switch(ena) {
      //Case 1: shift right by 1 bit     
      case 1'b0:
        q <= data[63:0] >> 1; 
        break; 
      //Case 2: shift right by 8 bits    
      case 1'b1:
        q <= data[63:0] >> 8;
        break; 
    }
  }
  else {
    cumulative_counter <= 0;
  }
  cnt <= cnt + 1'bend
endmodule
