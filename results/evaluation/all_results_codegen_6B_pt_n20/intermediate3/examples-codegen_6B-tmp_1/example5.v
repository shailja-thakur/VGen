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
always @ (posedge clk)
begin
    if ( reset )
    begin
        r_next <= 1;
    end
    else
    begin
        if ( r_next == 0b01000000 )   r_next <= 0b10000000;
        else if( r_next == 0b01000010 )  r_next <= 0b01000011; 
        else if( r_next == 0b00100001 )  r_next <= 0b01000010;
        else if( r_next == 0b00000001 )  r_next <= 0b00000100;
        else if( r_next == 0b00000011 )  r_next <= 0b00000010;
        else if( r_next == 0b00000010 )  r_next <= r_next2; // there is no previous bit
        else r_next <= r_nextend
end
endmodule
