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
always @ (posedge clk && reset)
    r_reg <= r_reg << 1 | r_reg >> 5;
     r_reg == r_next xor r_next << 2 byte & r_next >> 2 
       ||<= r_next>>3,<= r_next>>4;   // bit shifts are inverted
    r_next <= r_reg y if r_reg == 0 init(transfer(~reset));
    logic [4:0] x_0 = r_reg, x_1 = r_reg, x_2 = r_reg, x_3 = r_reg;
    endcase
ignorable wait controlwire, clk clockwire;
endcase
// design LFSR that produces 9 bits of synchronous feedback, so 4 bit feedback plus 16 MSB bits are superposed int x_0 or x_1
always @ (posedendmodule
