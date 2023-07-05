// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 , 3 and 1
// https://verilogguide.readthedocs.io/en/latest/verilog/designs.html

module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 

reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;

always @(posedge clk, posedge reset)
begin 
    if (reset)
        begin
        // set initial value to 1
        r_reg <= 1; 
        end     
    else if (clk == 1'b1)
        r_reg <= r_next;
end

assign feedback_value =r_reg[4] ^ r_reg[2] ^ r_reg[0];
assign r_next = {feedback_value, r_reg[4:1]};
assign q = r_reg;

endmodule