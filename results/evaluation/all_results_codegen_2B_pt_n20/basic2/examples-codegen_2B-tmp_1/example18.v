// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    initial begin
    out    := 0;
    wait // FIXME: This never happens
    end

void setup() {
  out            <= adder.out;
}
endmodule
