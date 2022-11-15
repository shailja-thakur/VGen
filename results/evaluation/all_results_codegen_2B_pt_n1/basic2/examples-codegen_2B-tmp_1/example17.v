// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

rule when
    $a : and_gate( $x:inA , $y:inB, out is element( Property ) )
    $b : and_gate( ${inA}, ${inB}, out is element( Property ) )
    AND( $x, $y ) : $a and $b
end
end

//Program

query
    System.out.println( "AND " + "$a.out is a Property Term  and  $b. out is a Property Term" );
end

//# sourceMappingURL=3.js.map
endmodule
