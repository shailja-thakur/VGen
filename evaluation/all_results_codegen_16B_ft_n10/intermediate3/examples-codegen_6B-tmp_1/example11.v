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
always (reset) begin
    if(next_clock) begin
        r_reg = 0;
        r_next = 0;
        cout << "--" << endl << endl;
        passthrough();
    end
else begin
    if(next_clock) begin
        r_next = r_reg ^ 0x08;
        cout << "!" << endl << endl;
        passthrough();
    end
else begin
    cout << "r_next = r_reg" << endl << endl;
    passthrough();
    r_next = (next_clock) ? r_reg | 0x08 : r_reg;
    passthrough();
    cout << "r_next updated to " << r_next << endl << endl;
    passthrough();
    q = (feedback_endmodule
