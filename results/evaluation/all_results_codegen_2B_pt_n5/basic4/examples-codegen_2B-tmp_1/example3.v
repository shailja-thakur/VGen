// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out.
  */
  void mux::thread_a () {
    while(true) {
      if (sel == 0) a[0]  = 0 ;
      if (sel == 1) a[0]  = 0 ;
    }   
  }
    
  void mux::thread_out0() { 
    while(true) {
      if ((sel ==0)&&(a[1]==1)) b[0] = 0;
      else b[0] = 0 ;
    }
    
  }
    
  void mux::thread_b () {
    while(true) {
      if ((sel ==1)&&(a[1]==1)) b[0] = 1;
      else b[0] = 0 ;
    }
  }
  
  

  /******* Erlang memory example ******/endmodule
