// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
module void wire_assign_exp( input in, output out );
// use an output to assign/initialize with


module pipelined_and( input channel_in, output channel_out, input pipeline_in, output pipeline_out);
    struct { input port_in,   pipeline_in; } __pin; //  these are ports named with a pin#
    __bits8  prev = SEQNOOB;
    SEQNOEQ(input __s;
        input out;
        while(PIPELINED) {
            if(port_in.PIPELINE)
                prev = __s;
            else {
                __s.PULSE = 0; prev = __s;
            };
        };
        next(__s);  # when update channel_in
    )
    pipeline_out(prev);endmodule
