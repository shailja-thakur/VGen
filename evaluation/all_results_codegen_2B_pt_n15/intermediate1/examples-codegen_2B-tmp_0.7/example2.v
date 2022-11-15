// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input cin;
output cout;

#0
  sum = a + b
#1
  sum = a + 0
#2
  sum = 0 + b
#3
  sum = a + 0
#4
  sum = 0 + 0
#5
  sum = 0 + 0
#6
  sum = 0 + 0
#7
  sum = a + 0
#8
  sum = a + c
#9
  sum = c + b
#10
  sum = c + 0
#11
  sum = 0 + c
#12
  sum = 0 + c
#13
  sum = 0 + c
#14
  sum = a + 0
#15
  sum = 0 + a
#16
  sum = 0 + 0
#17
  sum = 0 + 0
#18
  sum = a +endmodule
