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



module main(input [63:0] data,
input [1:0] load,
input ena,
input [63:0] shift_data,
output reg [63:0] q);

//assign data to shift_data
assign shift_data = data;

//assign load to ena
assign ena = load;

//assign shift_data to q
assign q = shift_data;

//always enable shifter
always @(posedge clk)
begin
   if (ena)
   begin
      if (load)
      begin
         if (amount == 0)
         begin
            shift_data = shift_data << 1;
         end
         if (amount == 1)
         begin
            shift_data = shift_data << 8;
         end
         if (amount == 2)
end
end
end
endmodule
