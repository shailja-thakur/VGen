// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
out = and(a, b);


module main() {
    output a, b, out;

    a <= 3;
    b <= 3;
    out <= and(a,b);
    always @(posedge clk) {
        a = a+1;  out = a;
        b = b+1;  out = b;
    }
}

endmodule
