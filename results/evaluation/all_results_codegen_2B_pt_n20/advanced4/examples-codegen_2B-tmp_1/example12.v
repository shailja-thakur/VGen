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

    always @(posedge clk)      // Only happens when clk goes low during reset.
    wire [63:0] register;
    always @(posedge load)
    {
        /*print "Load is low";*/
        if (ena == 0)
        {
            enb=0;
            compare=0;

            register loadbits; 
            if (active0)
               loadbits=register;            
            volatile uint64 retVal;
        {
            analshiftbits; 
            a[63:0]=result0;             // Extract the results.
        }
    }
    else 
    if (ena == 1 and enb && compare == 0)
    { 
        if (amount == 0)
        {
            compare=1;
            ana=1; 
            
            
            tmp64=endmodule
