// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always #(INTR_DISABLED,ISERDES_2,LATENCY_3,ID_1,RSTN,ALLCONFIG) go();
             
    return pos;
end

reg [7:0] ser;
            
            input initial_E1A0;
            input initial_E1CA;
            input initial_E0FA;
            input initial_E0BA;
            
            input initial_E0BA_m;
            
            input [7:0] initial_ser;
            
            reg [7:0] rec;
            
            input new_ser;
            input s2a;
            
            input ser_extract;  // is a 8-bit priority encoder that consolidates four bit streams into a 
                        // byte which is written to SEROUT01 to trigger the carts.
            
            inputendmodule
