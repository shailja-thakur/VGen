// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
register cin as input[0];
bit carry, sum;

core:
  de novo: 
    if (a==0)
      goto D_no
    if (a==1)
      goto A_no
    if (b==0)
      goto A_no
    if (b==1)
      goto B_no
  D_no: 
    update=0
  A_no: 
    process(a>0)
  B_no: 
    process(a==sum)
  proc_fin:  
    cout=sum
  update_fin:
    update=sum run Updt_Sync
  proc_error:
    update=!a|!b|!c|!sum||0
  update_error:
    update=!a|!b|!c|!endmodule
