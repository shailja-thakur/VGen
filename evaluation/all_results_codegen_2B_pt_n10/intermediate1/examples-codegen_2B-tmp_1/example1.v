// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

void maya_print( void )
{
console[a];
console[b];
console[cout];
console[sum];
console( "\\\\\\" );
}

void Adder instruction( void )
{
ConsoleLogger::debug::putLineNZ( &a );
ConsoleLogger::debug::putLineNZ( &b );
ConsoleLogger::debug::putLineNZ( &cout );

//Convert to bit carry-out
unsigned int carryOut = carry_out();
sum = a + b + carryOut;

//ConsoleLogger::debug::putLineNZ( &a );
//ConsoleLogger::debug::putLineNZ( &b );
//ConsoleLogger::debug::putLineNZ( &cout );
//ConsoleLogger::debug::putLineNZ( &a );
//ConsoleLogger::debug::putLineNZendmodule
