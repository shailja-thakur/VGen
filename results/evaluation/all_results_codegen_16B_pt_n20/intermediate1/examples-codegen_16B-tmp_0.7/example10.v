// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg carry, sum;

always @(posedge clk)
begin
    if (a) sum = a&b;
    else     sum = 0;
    if (carry) cout = sum|carry;
    else       cout = sum;
end

reg a, b, cout;
reg clk;

half_adder half_adder_inst (
    .a(a), .b(b), .cout(cout), .clk(clk)
);

always @(posedge clk) begin
    if (a) a = 1; else a = 0;
    if (b) b = 1; else b = 0;
end

// This is a full adder. A full adder adds four bits and produces a sum and carry-out.
module full_adder( 
input a, b,
output coutendmodule
