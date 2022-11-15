// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

wire  in_a[N_WIRE];
wire  carry_out[N_WIRE];
wire sum_wire, carry_out_wire;

initial_conditions out0 = {0, 0, 0, 0, 0, 0};

void out0_r( rst_n negedge clk p21 );
void bodf_in_Phase_A( rst_n negedge, posedge p21 )                
{
  sum_wire = a[0];
  carry_out_wire = a[1];
}

void bodf_in_Phase_B( rst_n negedge, posedge p21 )  
{
  OUT_Sum( sum_wire );

  carry_out_wire = 0;
}

void do_sets( boundary_time t, sensitivity s)
{
  switchendmodule
