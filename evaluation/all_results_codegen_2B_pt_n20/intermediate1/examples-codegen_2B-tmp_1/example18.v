// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

always @ (ca)
begin
    for( integer me = 1; me<=48; me=me+4) ; 
    sum add( a , b , cout);
    sum substract( a , b , cout);   
end

half_adder add_out( 
input a, b,
output cout, sum);

always @(ca)
begin 
    sum substract_out( a , b , cout);
    sum add_out2( a , b , cout);
end

half_adder add_out2( 
input a, b,
output cout, sum);

always @(ca)
begin 
    for( integer me = 1; me<=48; me=me+4) ; 
    sum substract_out2( a , b , cout);
end

module adder( 
inputendmodule
