// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum ); 

input clk;
input a_in, b_in; 
input logic[1:1]; 

reg sum; 

always begin
if rising_edge(clk) begin a_in <= a || b; b_in <= b || a;
sum <= a_in + b_in;
end 
end 

//AA+B = C
assign cout = sum && ~ a_in;
//A&C = D&E
assign sum = b_in && sum;
endmodule
