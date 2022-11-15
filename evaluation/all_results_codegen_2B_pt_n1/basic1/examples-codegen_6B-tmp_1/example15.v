// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
// out = in
wire_assign(1, 2);
module wire_assign2(input in, output out, input *marker=int(2), int &mark=int(2) );
module wire_assign3(int **a, int **b, int **c, int &d);
module test_func( int &s=0 );
test_func();

module array()
{
    int x[];
    int i;
    double *y;
}

module array2()
{
    int[10];
    int[5,10];
}

def _mem_proc_spec(int *loc, int size, enum mtx_update_mode mode);
int *a[10];

class array_init (int **loc, int value, int *arr[10])
{
    int i;
    forendmodule
