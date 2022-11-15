// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
default_net 1 of in[3] hash_high_2pos; 
// When sel=0, assign b to out
default_net 0 of in[2] hash_high_1pos;
//@endcode

//@begin priority_encoder example
priority_encoder priority_encoder.in [2:0];
priority_zero = in[3],[1:0];
priority_encoder.pos output reg = mouse_b; 
//Use priority transformer RMARK
current_mode( INPUT_VOLTAGE_NORMAL_IN, priority_encoder.pos ); // Set the Crossbar at Prefilter, NormalInput Mode
done;
        );
    );
    //OFF.POS ivergence clock input
#endif

#pragma sc_export ob

#pragma resetall
endmodule
