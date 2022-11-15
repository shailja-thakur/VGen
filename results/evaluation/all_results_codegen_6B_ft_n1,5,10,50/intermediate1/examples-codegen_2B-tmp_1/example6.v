// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );


// ${MOD} will be defined later
// '' will be defined later

void konami_urt( );

int
main()
{
  char thecode;
  double nodecode;
  int count;
  double answer;
  double sum;
  
  // load the parameters
  std::cout << "Input your addition parameters:" << std::endl;
  std::cin >> thecode >> nodecode;
  getchar();
  getchar();
  
  // implement a Pins implementation
  ${MYSHA}_load_half_add_konami_roundrobin();
  
  // turn on tmr0 and tmr1
  CPG_ENABLE ( CPG_TMR0 );
  CPG_ENABLE ( CPG_TMR1 );


  ${KONAMI_URL}
endmodule
