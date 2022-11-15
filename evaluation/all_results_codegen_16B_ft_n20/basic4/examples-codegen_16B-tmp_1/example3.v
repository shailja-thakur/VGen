// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// impl time cmp also make a note of if it's the max or not
 // method 0 is if funct(x,y)>, 'if y>x change to "then x<=y" x)+ is a bitwise operator 
 // my idea is that we have a look ona and b and only change when funct(a,b)==1:o0
 //so is the if body, when sel=0: a < b? {so,reset,x} = a else {sel,y,x} = b
 assign sel2 = (a > b) ? 0 :( sel ? 1 : sel ); //impl time cmp it's kindof 3s mux :)

 //when i have known to not use x bitwise, assign sel2 directly to the assign statement, and use sel to if-else 
 assign out = reset ? a : (selendmodule
