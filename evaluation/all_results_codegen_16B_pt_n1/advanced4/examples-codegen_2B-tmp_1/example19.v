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




      
      
    initial begin
        clk:clr;
        ena:clr;
        load:clr;
        data <= ena std_logic;
        amount <= ena std_logic;
        clk <= clk;
        read not ena;
        read not ena;
        read not ena;
        load <= data;
        ena:notenb for safety;
      end
      
      
      // clk = 1.
      // read ena;
      // output second ena.
      // when ena is low, first shift q and new ena, then slave 
      // lcd scan line. if ena is high, shift output.
      // ena is high after one shift;
      // always read ena down to >>4 before do shift when ena is high.
      // wouldendmodule
