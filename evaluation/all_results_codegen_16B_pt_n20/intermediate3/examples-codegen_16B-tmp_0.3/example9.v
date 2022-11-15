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
always @(posedge clk) begin
    if (reset) begin
        r_reg <= 1;
    end else begin
        r_next <= r_reg;
        feedback_value <= (r_reg[2] ^ r_reg[4]);
        r_reg <= r_next;
    end
end
// The following is a simple test program to verify that the above module works
// It generates a sequence of 5-bit values and prints them out
// Note that the LFSR is a Galois LFSR, so the sequence is repeating
// after 5 elements.
int main()
{
    lfsr(clk, reset, q);
    for (int i = 0; i < 5; i++)
    {
        cout << q << " ";
        wait();
    }
    cout << endl;
}
endmodule
