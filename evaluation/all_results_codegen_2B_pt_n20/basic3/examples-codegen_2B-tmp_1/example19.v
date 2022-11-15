// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge clk)
begin 
   if (in[sel] == in_i) {
      pos = 1;
   }
   else {
      pos = 0;
   }
   out = pos;
   pos_i = ~pos;
end

)";

    RTLVector rtl {{name, TLS::RTLCall::init({clk,pos_i})}};
    TLS::fault("/units/%s/init",name);
    RTLOptimise(name, rtl,rparen, __FUNCTION__);
}

void g++_hls::RTLPF(string name, SSL_CompositeRTL* rtl) {
  //  name = name + "/PCL";
    // Insert main process clock most
    string clk = "clk_m_p";
endmodule
