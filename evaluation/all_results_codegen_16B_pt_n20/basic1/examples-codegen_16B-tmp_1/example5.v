// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in

// no private, no constructor, no one in here.

// wire_assign:
// Writes to the output and reads the input. Opening a connection between them.

// we make a port two,
void wire_assign::trigger()
{
   out = true;
   in  = true;
   // now connect
   ior( in, out );
   // now direction right
   // equal to one media that this port is between.
}

// what we call the pre_switch
void wire_assign::trigger_pre()
{
   //nop
}

// what we call the post_switch
void wire_assign::trigger_post()
{
}



// The Emitter is the thing we are trying to replicate with Wire classes.
// We just need to make the same things for classes that exist.
// for now justendmodule
