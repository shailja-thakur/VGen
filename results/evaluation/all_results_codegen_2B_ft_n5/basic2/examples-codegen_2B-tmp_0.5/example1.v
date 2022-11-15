// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
 always @(a, b)
 case({a,b})
 2'b00: out = 1'b0;
 2'b01: out = 1'b0;
 2'b10: out = 1'b0;
 2'b11: out = 1'b1;
 default: out = 1'b0;
 endcase

endmodule
