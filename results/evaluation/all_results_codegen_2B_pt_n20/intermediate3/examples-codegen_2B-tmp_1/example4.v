// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q
sample StepperPrim::samples_tap[5] = {
        step::bit(1, Step::Right), //5
        step::bit(1, Step::Left),  //4
        step::bit(1, Step::Forward),//3
        step::bit(1, Step::Backward),//2
        step::bit(1, Step::Stop)  //1
};
switch (r_reg) {
    case 5: clk::eq(clk, 0); feedback_value = samples_tap[0]; goto 'Black After';
    case 4: clk::eq(clk, 0); feedback_value = samples_tap[2]; goto 'Black Last';
    case 3: clk::eq(clk, 0); feedback_value = samples_tap[4]; goto 'Black Next';
    case 2: clk::eq(clk,endmodule
