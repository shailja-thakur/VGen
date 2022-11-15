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
always( clk or reset) begin
    r_reg <= ~( feedb() xor ((r_reg[5] << 4) | r_reg[3]));
    r_next <= r_reg;
    q <= r_next[32];
end

// register definition and all the prims




// address indexes
always( clk or (not r_next)) begin
    for (di = 4:0h; di <= 6:1; di++) begin
        r_next[di] = (r_next[di] >> 1) + (r_next[di+1] << 1);        
    end  
  end                  

always( clk and ((r_next[7:0]<<7)|r_next[6:0]) ) begin
    x1 <= (feedb()xor( r_next[5] , rend
endmodule
