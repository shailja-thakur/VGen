// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
asm wor_assign(in, out) {
        mov_reg( out,in )
}

// assume UINT17 is between -32768 and 32768; we currently force it to 0.
// convert the input into a signed rational using two MSB ia32 flags 

// exact implementation at the moment. could use a helper func to manage
// the VM in a neat way if required.
module unsigned_to_frac( input inthi, input intlo, output fraco )
{
		/* Assembler; check opcode "unsigned". */
	  mov_imm( inthi, 0x01ffffff )
	  mov_imm( intlo, 0xffffffff )
	  mov_imm( fraco, 2 )
	  mov_imm( fraco, 1 )
			/* Bin2Dec( UINT17 & (endmodule
