// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

(* decode(sum)
assign cout = sum(16, 7);

// signal : { 1, 2, 3 }   carry out : { 7, 1, 4 }

parameter { 1, 2, 3 } test;

(* extract_lsb(val)
assign val(1) = (val(16) & 0x1);
assign val(2) = ((val(16) & 0x2) >> 1);
assign val(3) = ((val(16) & 0x4) >> 2);

//signal : 1 2 3   carry out : 4 3 2 1

parameter { 1,2,3 } a;
parameter { 4,3,2,1 } b;

assign {  4 - ((d7.eq(0)*2 + d6.eq(0)*3 + d5.eq(endmodule
