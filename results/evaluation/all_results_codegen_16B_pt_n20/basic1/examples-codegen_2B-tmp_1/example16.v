// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
input in;
output out;
wire [1] int_age = 1;

task mr > out **in = apply(*) (*(*+int_age)**) 
{
   if (int_age < 10)
   {
        *(*+int_age)** = 880;
   }

   elif (int_age == 10)
   {
      *(*+int_age)** = 258;
   }

   return next;
}
"$DEVICE_NAME",
$DIGEST,
$SELECT_WORD,
$DEVICE_EXAMPLE
endmodule
