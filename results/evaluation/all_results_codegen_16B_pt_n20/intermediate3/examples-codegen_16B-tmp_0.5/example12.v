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
    if (reset)
        r_reg <= 1;
    else
        r_next <= r_reg;
    feedback_value <= ~(r_reg[3] ^ r_reg[2]);
    r_reg <= r_next;
    q <= r_reg[4];
end
"""
        )
    
    def __init__(self):
        """
        Constructor.
        """
        self.reset()
        
    def reset(self):
        """
        Resets the LFSR to the initial state.
        """
        self.r_reg = 0
        self.r_next = 0
        self.feedback_value = 0
        self.clk = 0
        self.reset = 0
        
    def set_clock(self, clendmodule
