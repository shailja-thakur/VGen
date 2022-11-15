// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
asm(
".timeStamp {                           // #pragma|@timeStamp
    click 'beep' \n
    label 'inc'
    or(1)               // or with 1
    rjmp 'inc'           // goto inc
}
.simArray {                            // END #pragma|@simArray
    clear.sim                               // #pragma|@clear.sim
    do while(1)                           // while(1)...
    delay 1                             // delay a bit
    inc ramp:+1
    do while(1)                           // repeat
    delay 1                             // delay a bit
    inc ramp:+1
    delay.sim 5                         // delay 5 longs
    step.sim -1,step.sim +2               // step to +2, -1
    delay.sim 15                         // delay 30 longs
    step.sim +endmodule
