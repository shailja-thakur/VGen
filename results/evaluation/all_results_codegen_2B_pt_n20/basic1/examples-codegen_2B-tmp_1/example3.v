// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign (
input, out, in);
 */
#include <iostream>
/**
 * Design a module that reads an input value and outputs the input value
 * casted to the type of the input variable declared previously. The number
 * of times the input variable is updated is ignored.
 */
class wire {
	/* private */
   // We need  output variable to define what is written to  at run time
   bool out;
   // define the input object of variable "or"typed to the variable type
   // given in the design definition.
   register uint8_t in;
   public:
   // custom constructor is expected to be private
   wire(uint8_t v) 
   {
      this->out = false;
      this->in = v;
   
   }
   // change the input to a different value
   void change(uintendmodule
