// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

def main():
    #set_trace( True );

    conn1 = module( sub( "conn1", "conn1", input , "input1" = b, "in0"   = a ) ) ; # a
    conn2 = module( sub( "conn2", "conn2", input , "cx"     = cout, "bus"  = cout, "input" = input, "sum"  = sum ) ) ; # cx

    outputs = module( sub( "outputs", "outputs", output ,"aa" = a    , "bb"  = b ) ) ; # aa, bb;

    conn1.lexpout_o()   <= weights( a, b ) ;
    conn2.lexpout_cout() <= conn1.lexpout_cout() ;
    conn2.clk_i()       endmodule
