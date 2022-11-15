// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
*/
/*When a and b are both high or both low, 'out' is set to one.
When a is high and b is low or the respective other way round, 'out' is set to zero.*/
 /* instead of 
 */
assign out = ((!a && b) || ( a && !b ) );

/*
always@*
    begin     
        uncomping select: if a is high,
               out    = 1    ( irrespective of value of b);
             else if b is high,
                out    = 0     ( irrespective of value of a。);
            else;    
          end    
    else;    
    begin     
    always@(*)
                if(b)        begin    end
end
endmodule
