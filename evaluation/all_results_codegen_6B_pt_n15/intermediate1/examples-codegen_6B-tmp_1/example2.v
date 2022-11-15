// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
 function sum1 = half_adder(in a, in b, hcsr);
  wire hcsr;
        sum(a, b);
  begin :
        label .fin1;
        enable hcsr;
        default;
        if( a == b  );
          hcsr = 1;
        else
        hcsr = 0;
 end
    else
          enable (1'b0 - sumn1);
                             sumn1 = b;
        else
          enable(1'b0 - sumn2);
                              sumn2 = a;
        else
          enable (0'b0 + sumn3);
            sumn3 = (sumn2 ^ sumn1);
        else
          enable (1'b0 - sumn4);
                              sumn4 = (b | ((~a) & sumn3));
endmodule
