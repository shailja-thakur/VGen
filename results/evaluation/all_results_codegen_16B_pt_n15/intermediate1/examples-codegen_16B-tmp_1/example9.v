// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a;
input b;
output cout;

void main () {
  
  first_half fh;
  second_half s;
  input_sum errout;

  sum := <<hi, lo>>;
  
  ctxit;
  satable <<write_option: cloop top>>;

  op2 := fh(a, b) 
  op1 := fh(op2, b)
  op0 := fh(op1, b)
    
  op1 := s(a, b) 
  op0 := s(op1, b)
  errout := s(op0, b);
  if (error) then cout := <<2 * invalid_error>> else cout := <<sum, op0>>
  
}
endmodule
