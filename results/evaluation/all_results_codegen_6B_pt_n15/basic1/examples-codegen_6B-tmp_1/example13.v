// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module wire_assign_full( input in, output out )
        requires
            wire_assign( in, out )
        ensures
            out == in;

// Functions to start retrieving sources from memory
functionNoSubst<module> expr( module &m );
functionSubst<module> expr( module &m, template<typename T> bool with_mem )
        requires
            with_mem ? channel( m );
        ensures
            expr( m ).with_mem = with_mem;
        ensures
        expr( m ).address == in_addr;
functionSubstX<module> expr_xml( module &m, template<typename T> bool with_mem )
        requires
            with_mem ? channel_xml( m );
        ensures
            expr_xml( m ).with_mem = with_mem;
        ensendmodule
