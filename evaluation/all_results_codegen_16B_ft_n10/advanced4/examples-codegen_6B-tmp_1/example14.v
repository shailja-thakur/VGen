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


// requadgenamed is the same as requadgated
advshift requadgenamed(advshift(clk,load,ena,amount,requadgated(clk,load,ena,status)));// note the [63:0] clause

// Upper register for OrC. 
reg [63:0] advshift orc(advshift(clk,load,ena,amount,status));

// Store and Load
q <= advshift(clk,load,ena,amount,decload,address, lo);

// Upper register for Store
store(address,q);

// The following is pretty much the 'requestor' in the SystemC manual. 
// Just assume there's a register which has the data transferred to it. 
// Then the assignator and assignator can do the same with the port. 
requadgated begin(clkend
endmodule
