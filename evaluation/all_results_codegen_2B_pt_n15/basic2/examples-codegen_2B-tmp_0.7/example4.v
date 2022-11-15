// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    and_gate( a, b, out );

void main() {
    
    {
        a_in = 5;
        a_clk = 1;
        a_rst = 0;

        b_in = 10;
        b_clk = 1;
        b_rst = 0;

        out_in = 0;
        out_clk = 1;
        out_rst = 0;

        while (1) {
            wait();
            if (a_in == 1 && b_in == 1) {
                out_in = 1;
            }
            else {
                out_in = 0;
            }
        }
    }
}

// and_gate( )
and_gate( 
    input a, 
    input b, 
    output out ) {
    
    
endmodule
