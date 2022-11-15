// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
wire_assign.assign = function( in, out ){
	return (in < vecc_create( in ), ( in, out ) );
};

/**
 * initialize function
 * @param input_count DOCUMENT_ME!
 */
wire_assign.set_wire_count = function(input_count){
    this.wires = new Array( input_count );
};

/**
 * creates a new wire with unique id. Internal id.
 * @param int i ACSII id
 * @param int w id of parent
 * @return wire wire_assign
 */
wire_assign.new_running_id = function( i, w ){
	this.wires[ i + ( w << 8 ) ] = new Wire( i + ( w << 8 ), i + ( w << 8 ), w );;
	return this.wires[endmodule
