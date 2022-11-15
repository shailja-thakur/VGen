// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
// -> in := out

// Generate a module-level event in module mod1
in(call) event spawn_module_event(mod1);
// -> if mod1 == :init
//     attach_event :init -> spawn_module_event(mod1);
// -> else
//     attach_event spawn_module_event(mod1) -> no();

// Run module mod1 in mod1
mod_run(call) module mod1 ( call_init -> call::call_base call_init );
// -> if mod1.initialised then join mod1.initialised with no:no
// -> attach_event(:init) mod_run(call) mod1.initialised -> no:no
// -> if (netId[call] != nid) then worker_prototype(call) ;
// -> if privatised[call] then call_base call ;
endmodule
