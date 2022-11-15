// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum ); 

reg ahi, adi, ashift, bhi, bdi, blshift; 

always @(posedge clk) 
  { 
    if (a.read() > 0)
      ahi.write(BIT(a.read(),0));
    else
      a.write(0);
    a.nc_write(a);

    if (b.read() > 0)
      bhi.write(BIT(b.read(),0));
    else
      b.write(0);
    b.nc_write(b);

    ahi += ahi << blshift;
      if (ahi == 1)
	blshift = (blshift+1)&32;
      // Prevents carry-out to take effect
    ahi <<= ashift;    
    if (ahi == 1)
	ashift = (ashiftendmodule
