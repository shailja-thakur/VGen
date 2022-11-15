// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign out = a & b;


// 5. Design a function that returns a boolean value

function is_paulus_reactor( input paulus_power )
{
    // return true if the input value is a multiple of 5
    return ( paulus_power % 5 == 0 );
}


// 6. Design a function that takes a long integer and returns
//    true if it is divisible by 3 or 5

function is_divisible_by_3_or_5( input number )
{
    // return true if the input value is divisible by 3 or 5
    return ( number % 3 == 0 || number % 5 == 0 );
}
endmodule
