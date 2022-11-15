// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

*/

void
adder::init()
{
    // Register all the registers
    for( int i = 0; i < m_registers; ++i ) {
        register_writer( i );
    }

    // Initialize function with space for the registers
    module::unbounded_instruction *insn = new module::unbounded_instruction;
    insn->set_opcode( module::OPCODE_NOP );
    insn->set_type( module::INSN_NOP );
    m_unbounded_instructions.push_back( insn );
    m_last_instr_idx = 0;
}

void
adder::register_writer( int id )
{
    m_writers[ id ] = ( module::reg_t ) m_unbounded_instructions.size();endmodule
