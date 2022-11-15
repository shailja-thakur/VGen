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

  always @(posedge clk) begin 
    if(ena) begin 
      if(load) begin
        int_to_io<tmpint> <= data;
      end
      if(en_shft) begin
        int_to_io<data_shft>( amount <= '0' ? (data[1:(amount-1)]) : ((data[amount-1:43] << ((32-amount) - 1)) | (data[44:(amount-1)]) ));
      end
    end
  end
endmodule
