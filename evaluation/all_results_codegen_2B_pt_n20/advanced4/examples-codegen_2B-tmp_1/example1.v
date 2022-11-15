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


always @ (clk) begin
    if ((ena == 1) && (clk == 1))
    {
        q(63'h00) = data(63'h0.b);
    }
end

/*
// design a chain of registers that can do 8-bit arithmetic shift.
module shifter(clk,
input clk,
input [7:0] amount,
input rega,
input writes,
output rega); 
reg b, c;


// write to shifter, maximum to left is 8.
wire [7:0] data;
reg shifter = 0;
always @(clk)
begin
    if ((ena == 1) && (clk == 1))
    {
        switch (amount)
        {
            case 0: // leftshift neighbour
                shifter < 8'h00;
            breakend
endmodule
