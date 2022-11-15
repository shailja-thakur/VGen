// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
assign pos[4:0] = (in[0] << 2) | in[1];

/*
 * Copyright (C) 2010 Texas Instruments Incorporated - http://www.ti.com/
 */
 
 
 
 
int main()
{
    priority_encoder o;
    //o = 1;
    //o = 2;
    o = 3;
    
    o.write(1);
    o.write(2);
    o.write(3);
    
    //o.read();
    //o.read();
    //o.read();
    
    //o.write(0);
    
    return 0;
}
endmodule
