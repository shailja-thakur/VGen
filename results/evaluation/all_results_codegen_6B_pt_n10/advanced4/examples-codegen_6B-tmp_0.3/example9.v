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


// The shift register is implemented as a state machine.
// The state machine is implemented as a series of stages.
// The stages are:
// 1. load -> shift -> load
// 2. shift -> load
// 3. shift -> load
// 4. shift -> load
// 5. shift -> load
// 6. shift -> load
// 7. shift -> load
// 8. shift -> load
// 9. shift -> load
// 10. shift -> load
// 11. shift -> load
// 12. shift -> load
// 13. shift -> load
// 14. shift -> load
// 15. shift -> load
// 16. shift -> load
// 17. shift -> load
// 18. shift -> load
// 19. shift -> load
// 20. shift -> load
// 21. shift -> load
// 22. shift -> load
// 23. shift -> load
// 24. shift ->endmodule
