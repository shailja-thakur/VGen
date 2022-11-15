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
always @ (posedge clk or negedge reset)
// Process Parallelities
assign r_reg = r_next XOR GALOIS(bitwidth(q) + bitpos(r_next), r_next);
assign r_next = GALOIS(bitwidth(q) + bitpos(r_reg), r_reg);
assign bitpos(r_next) mod 6 = 5;
assign bitpos(r_next) <= bitand(bitwidth(q) + bitpos(r_next) - 1, 6);
assign feed = ((6'h'zf & ((6'hx << 8) | bitcast(lfsr(bitpos(r_next)))), 8'h01H>)))[3:0] ;
end

exit:
;
endmodule
