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
assign q = r_reg;
(* l-11 *) begin
    (* min -8 *) begin # the inside of the while loop, see above
        if (r_ulog <= 0) # is reset?
            r_reg = 1;
        else {
            r_ulog = r_ulog - 1;
            // identify the two bits, i.e. 2, 4, 6, ... in r_reg
            assign r_bit[5] = r_reg[0:4];
            assign r_bit[3] = r_reg[4];
            //  feedback logic to determine if
            //  a new bit is necessary..
            assign feedback_value = r_bit[3] ^ r_bit[5];
            assign r_bit[2] = 1 & r_reg[3] ^ r_reg[4];end
end
endmodule
