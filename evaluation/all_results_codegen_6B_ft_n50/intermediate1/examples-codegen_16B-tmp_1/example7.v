// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
 assign sum = a ^ b; // xor the two inputs. 
 assign cout = a & b; // and the inputs. 
endmodule
