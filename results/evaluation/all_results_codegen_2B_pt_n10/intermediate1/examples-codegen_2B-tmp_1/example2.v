// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire [15:0] in[]  = hb16( a );
    wire [8:1] in'[]  = hb8( b );
      wire out[]      = ob16();
      wire sum[]      = os16();
      wire carry[]    = oc16();
     contract halfAdd(
       in[>, <16], in'<[>, <16], out[>, <16], sum<[31:16], [15:0], bool carry[]<>);
         begin
           carry<=true, { sum <= output, carry <= carry} end
     endmodule
