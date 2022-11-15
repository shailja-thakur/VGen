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
void counter::execute() {
    if (clk == 1 and reset == 1) { 
        q = 0x1;
    } else if (q == 0x12) {
        q = 0x1;
    } else { 
        q = (q << 1) + 1;
    } 
} 

// Likewise the same with a fixed address
module address( 
    input clk,
    input reset,
    output reg [3:0] q 
);
address::execute() {
    // update q with a parallel array address 
    if (clk == 1 and reset == 1) { 
        q = 0x10;
    } else if (q == 0x8) {
        q = 0x10;
    } else { 
        q = (q << 1) + 1;
    } 
} endmodule
