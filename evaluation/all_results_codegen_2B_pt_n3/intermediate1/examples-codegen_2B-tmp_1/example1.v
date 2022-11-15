// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

unit half_adder_s( 
input a, b,
output cout );

export interface half_adder_s {

    void half_adder_s_sPrime_i(
    input a, b,
    output cout );

    void half_adder_s_aprime_i(
    input a, b,
    output cout ) ;

};

*/

/* 
The following should be implemented
  sout = 0;
  psumin =
*/
//public interface sout       @ sig( P.out, P.sig )
@SledInterface
public interface sout( P.out, P.sig )
{
    void half_adder_s( 
//    input a, b,
    input a, 
    output cout ); //sout0(
//    input a0, b,
endmodule
