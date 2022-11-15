// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
module and_module( 
    input a, 
    input b, 
    output out );

// driver code


int main() {
  and_gate a( 
    i_clk, 
    i_nrst, 
    i_adr, 
    i_dat, 
    o_dat );
  and_gate b( 
    i_clk, 
    i_nrst, 
    i_adr, 
    i_dat, 
    o_dat );
  and_gate c( 
    i_clk, 
    i_nrst, 
    i_adr, 
    i_dat, 
    o_dat );

  and_module c_mod( 
    i_clk, 
    i_nrst, 
    i_adr, endmodule
