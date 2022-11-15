// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

assign sum = a ^ b;
assign cout = a & b;
/*
always @*
begin
if (a && b)
	cout = 1'b1;
else
	cout = 1'b0;

case ({a,b})
2'b00:
$display("sum$\t|carry_out$",$time,"\t%d\t| %b %b",sum,cout);
2'b01:
$display("sum$\t|carry_out$",$time,"\t%d\t| %b %b",sum,cout);
2'b10:
$display("sum$\t|carry_out$",$time,"\t%d\t| %b %b",sum,cout);
2'b11:
$display("sum$\t|carryend
endmodule
