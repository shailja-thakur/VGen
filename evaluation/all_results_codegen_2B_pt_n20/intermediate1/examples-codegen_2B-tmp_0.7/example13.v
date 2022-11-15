// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

always @(posedge clk) begin
    cout = 0;
    sum = a + b;
    if ( sum > 0xF )
        cout = 1;
end

// This is a full adder. A full adder adds a bit at a time and produces a sum and carry-out.
module full_adder( 
input a, b,
output cout, sum );

always @(posedge clk) begin
    cout = 0;
    sum = a + b;
    if ( sum > 0xFF )
        cout = 1;
end

// This is an LFSR, which adds a bit at a time and produces a sum and carry-out.
module lfsr( 
input a, b,
output cout, sum );

always @(posedge clk) begin
    cout = 0end
endmodule
