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
always @( posedge clk, posedge reset )
begin
  if (reset) begin // reset line can fall through onto output
    q = 0b11111111;
    r_reg = 1;       r_next = 1;     feedback_value = 32;
    while (true)
      begin
        r_reg_next_step:
        tmp[4]<<=1;            //toggle in tmp by saving one bit
        r_reg = (r_reg >> 1);  //shift r_reg left
        if (tmp[4] > 0) {     //if r_reg still has bits left
          r_next_step:        //assign r_next next step
            r_next = (r_reg & 1);
            feedback_value_step:
              reg[3:0] = r_reg;
              q = (q ^end
end
endmodule
