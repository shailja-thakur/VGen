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
// determine the feedback values for each xor
assign feedback_value = r_reg[2] ^ r_reg[4];
// create gatelevel circuit; counts from 0 to 32 when clk=1
always @ (posedge clk)
begin
if(reset) //if reset is high go to step 1
begin
r_reg <= 5'b01100;
end //end reset high
else //if reset is low go directly to step 2
begin
r_reg <= r_next;
end //end reset low
end //end always
//notice, feedback_vector is an output of the xor gates
assign r_next = (r_reg << 1) ^ {r_reg[4], r_reg[3] ^ feedback_value};
end
end
end
endmodule
