// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
        
wire carry_in, carry_out, sum_out;

input [7:0] a, b;

reg [2:0] temp;

always @( posedge a or posedge b ) begin
    if ( a or b ) begin
        temp = a;
        a = b;
        b = temp;
    end else begin
        sum_out = 0;
        carry_out = 0;
    end
end

always @( posedge a or posedge b ) begin
    if ( a ) begin
        cout = temp + 1;
        temp = b;
        carry_in = carry_out;
        carry_out = a;
    end else begin
        cout = temp + 1;
        temp = a;
        carry_in = carry_out;
        carry_out = b;
    endend
endmodule
