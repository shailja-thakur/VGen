// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire signed [2:0] result;

reg out;
reg carry_in;



half_adder(a,b,cout,result){
    carry_in = a ^ b ^ result[1];
    out = (a & b) | (~a & result[1]);
    cout = out + carry_in;
    out = (a | ~b) | (b & result[1]);
}

always @( posedge input_0, posedge input_1 )
begin
    if ( input_0 ) {
        half_adder( a, b, cout, sum );
    } else {
        sum = (a + b);
    }
end

endmodule
