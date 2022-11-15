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

    always @(posedge clk) {
        if( load && ena ) {q <= data; }
    }
    assign q <<= (amount-1); // shift depending on action
    assign q[63] = ena;
    assign q = 32'damagedleftmost;
    assign out = q; // just to have something writing here, rather than assign nothing to q.

    always @(posedge clk) {
        if(enb & load) {
            if( ena & ~(1'b0) ) {
                q[31] <= 2'h00;
                q[30:27] <= 2'h10;
                q[26:23] <= 2'h00;
                q[22:19] <= 2'h00;
                q[18:15] <= 2'h00;
                endmodule
