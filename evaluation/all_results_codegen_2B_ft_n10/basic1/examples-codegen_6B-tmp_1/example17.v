// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
// input could be a wire, or a concat output
//          wire_assign( in ,out )


function begin_board( input )
{
	init_board();
	outputs="";
	while( 1 )
	{
		inputdbm=1;
        while( inputdbm )
        {
        	// repeat to all outputs
			// do c/h style moved_board
        	// only one counter
			outputs=outputs+"1";
			if(NUMW>=H) index_out=0;
			else index_out=8;
        	// only 1 clock
			on_out=1;
			clk_out=1;
        	// copy string
			bcd_out=bcd_out+"0";
			strings_per_digit=NUMW*H;
			index_outend
endmodule
