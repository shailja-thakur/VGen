// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum ); 
      
assign sum = (a + b);

// write results to cout. 
output cout = sum + carry_out;

// inorder simulation. 
int main()
 {
int a = 0, b = 1, cout = 0, sum = 0;
 
cout = 1; 
 
reset_nodes(); 

while (cout != 0) { 
/*While statement condition ensures that this iteration is executed on first carry-out.
It is an infinte loop, does the ahfull_adder run continously the programme execute once for every iteration.
Outof while loop print statements are called to inform the user of which variables are running their operation.
One After adding a and b to cout, a computation is carried out and is the sum.
Once again cout is used in order to move to the next line in assembly, incases required. Method isendmodule
