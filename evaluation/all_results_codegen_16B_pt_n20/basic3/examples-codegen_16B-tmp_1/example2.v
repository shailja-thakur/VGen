// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign a to out
{
  case( a[2:0] | b[2:0] ) 
    pos = 0;
    else:
      case( ( a[0:0] & b[0:0] ) | b[1:0] )
        pos = 1;
        else
	  case( b[0:0] & a[0:0] )
   		  pos = 2;
      else
	  case( a[1:0] | b[1:0] )
     	  pos = 1;
  endcase
}
process ( pos )
	begin
 		assert( true = '1' )
 		if ( pos == 3 )
 		{
			// assert( true = 1'b0 )
			// assert( false = 1'b1 )
		}endmodule
