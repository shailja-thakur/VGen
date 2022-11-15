// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

reg cout;
reg sum;

always @ *
 begin
 case(a & b) // (a*b)
 0 : {cout, sum} = 6'b000000; // la sumah nya 0 jgn dan simp manajemen. :)
 1 : {cout, sum} = 6'b000001; // yg dan simp jgn until- saat left-shift masukin. :(
 2 : {cout, sum} = 6'b000010; 
 3 : {cout, sum} = 6'b000011; 
 4 : {cout, sum} = 6'b000100;
 5 : {cout, sum} = 6'b000101;
 6 : {cout, sum} = 6'b000110;
 7 : {cout, sum} = 6'b000111;
 8 : {cend
endmodule
