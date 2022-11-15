// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

function half_adder_inst()
{
    var a = 0, b = 0, cout = 0, sum = 0;
    
    function half_adder_next()
    {
        var c = 0;
        
        if( a == 0 )
        {
            c = b;
        }
        else
        {
            c = a;
        }
        
        if( c == 0 )
        {
            cout = 0;
        }
        else
        {
            cout = 1;
        }
        
        if( c == 1 )
        {
            sum = sum + 1;
        }
        else
        {
            sum = sum + 2;
        }
        
        a = c;
    }
    
    half_adder_next();
    
    return half_adder_inst;endmodule
