// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign(in, out);


/**
 * @brief The ports you want to connect. Ports must be instances of the Port class.
 */
static const Port* ports[] = {&in, &out};
//!! insert ports here

/**
 * The main routine of your module.
 * In this module, a module queue with size 1 is created.
 * we first remove each port from itself until there is nothing to remove.
 */
void main(){
	uint size = 2;
	// create queue to hold 2 events
	module_queue queue(size);
	// set the read until end flag of each port
	input.r_until_end();
	output.r_until_end();

	// first step of optimizing, we try to connect all ports
	while(!queue.empty()){
		// try all possible ports and loop over them
		Bendmodule
