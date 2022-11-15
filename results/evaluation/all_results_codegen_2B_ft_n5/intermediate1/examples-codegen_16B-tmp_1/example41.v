// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
reg cout;
always @(a,b)
begin
if (a==b) 
cout=0;
else if(!a && b)
cout=1;
else 
sum=1;
end
endmodule
