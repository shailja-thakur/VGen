// Design a module that implements an AND gate

module and_gate( 
    input a, 
    input b, 
    output out );

    // assing the AND of a and b to out
    assign( out, and_gate( a, b ) );

    // Define a task that will run the and_gate module
    task t1( my_and_gate, a, b, out );
    t1.start();
    t1.join();
    
    // Define a task that will run the and_gate module
    task t2( my_and_gate, a, b, out );
    t2.start();
    t2.join();
    
    // Define a task that will run the and_gate module
    task t3( my_and_gate, a, b, out );
    t3.start();
    t3.join();

// --------------------------------------------------------------------

int
main()
{
    // Create a system of tasks
    task_system ts;

    // Create a task that will run the andendmodule
