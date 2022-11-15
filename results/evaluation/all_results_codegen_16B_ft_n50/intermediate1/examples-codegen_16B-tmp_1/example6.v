// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum ); 
// assign code for each input, output and internal variable. 
assign sum = a ^ b; // bitwise xor of two inputs. 
assign cout = a & b; // bitwise and of two inputs. 
endmodule
