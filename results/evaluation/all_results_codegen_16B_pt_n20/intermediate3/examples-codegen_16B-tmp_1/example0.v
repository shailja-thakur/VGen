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
always @(posedge clk or posedge reset) begin
    if ( reset == 0 ) begin
        r_reg <= 1;
    end
    else begin
        r_next <= r_reg;
        r_reg <= r_next;
        r_int <= ~r_next.and(3);
        feedback_value <= ~r_reg.and(1).or(2); 
    end
end
assign q <= r_reg;



// Design a 2-bit linear counter to generate alternating clk/pacman input
int getBit( input clk );
reg cnt;
wire CounterInitValue;
wire CounterBit0;
// Reset cnt to 0 on reset
// Assign the least significant bit of cnt to CounterInitValue
// Assign the i_bit of cnt to CounterBit0
// Increment cnt on clendmodule
