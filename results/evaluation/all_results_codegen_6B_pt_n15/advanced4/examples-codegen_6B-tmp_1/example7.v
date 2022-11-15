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

        // HFILE of MAC1, EVAL for MAC2
        module mac(input clk,
                input [63:0] q,
                output macinstall);
        // shift each bit out to shifter with xor, 
        always @(posedge clk) {
                if(load==1) {   if(ena==1) {mac = macinstall;} 
                    else {mac = '0'; }}
                else {mac = mac.q;}
        }
        reg #1 to_shift_out(bool reg_load, int shift_amount);
        always @(posedge clk) {
                connect(mac);
                mux4321 ctrl(.Q4, .Q3, .Q2, .Q1);
                mux4321_mac mmac(.Q9, .Q10, .Q11);
                to_endmodule
