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


always @(*)
// shift shifter clock
assign shifter_clk = clk;    

// MOV reasons: MEMORY
// if load high wrt shifter_clk exchange of data and shifter clock clock 
    always @(*) internal begin
        if (ena)
            assign q = data;
            //set shifter_clk = 0x0;
        
        else
            assign q = q;
            set shifter_clk = shifter_clk;
            //set shifter_clk = 0x0;
    end

// shift shifter when step
if ((ena && !load) && (amount == 0)) // or case
    assign q = q;
else
assign q = shifter_clk >> amount;    // Step the shifter as selected
nelts <<= amount;    // byendmodule
