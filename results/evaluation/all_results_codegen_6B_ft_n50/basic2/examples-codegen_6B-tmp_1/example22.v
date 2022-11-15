// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out

assign out=a&b;

 endmodule
 // Design a module constantly changing angle(extended to clock cycles x,y)
 
 // 4x4 Rangle dekotes
 //reg[3:0] angle; is the angle that you want to be. The clock is changed and changed(clock now depends on x,y) 
 
 
 // Digangle has representations of the sides of a rectangle and the clock represents where the digits should be next blurred or displayed.
 // HW3 Step 3
 
 //angle = ((5'd31)^(-4)^(-3)^(-2)^(-1)): 
 // angle[30:18] = e1,angle[0] = CW 90
 //angle[16] = CW 90
 //angle[13] = CW 5'h1
 //angle[9:2] = CW 32'h1

 //angleendmodule
