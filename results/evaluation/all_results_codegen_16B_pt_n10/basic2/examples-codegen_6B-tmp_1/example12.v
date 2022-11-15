// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out 
        
        
    end 

function 
and_gate<T>((i, o) )
{
    return (a[i] && b[i])? o[i] : 0;};        

end
                          

module Module(

    input a,
    input b,
    output c);

    always( and_gate<uint>(a, b, c) );

end
    ~~~
                      ~~~

        end


        end module Module(a, b, c)

        end and_gate<uint>(a, b, c)

        end

end

end

end
 )


// Test Execution

end 

`,
        log: function () {
            if ( common.testFailed() ) {
                common.log( 'Test Fail' );
            }
        }
    }endmodule
