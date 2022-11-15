// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
 
    task repeatable_and
    {
        while (true) {
            out<$rst(0);          
	    wait();
	    out<$rst(0);           
            out<$rst(1);          
	    wait();
	    out<$rst(1); 
        }
    }

endmodule
