// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

always @(posedge debug_channel)
    sum{ cout = a + b; }

reg counter = 0;

void main()
{
    // Skip:
    cout<<"Skipping OR CFor"<<endl;
    for(int i = 0; i<5; i++)
    { 
        cout<<"Skipping for block:"<<i<<endl;
        if(i==0)
            printf("i: %d\n",i);
    }
    // Here we get the ORC for some reason:
    __root._OCLK.negedge_event( clk.posedge );
    rst.clr = 1;
}

endmodule
