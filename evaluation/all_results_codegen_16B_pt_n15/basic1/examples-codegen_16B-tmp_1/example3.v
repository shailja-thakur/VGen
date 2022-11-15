// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
// Design a module that computes proportional rate and continuous.
module comp_pro_rate( constant input denom_in,
                     constant input num_in,
                     constant input start_in,
                     constant input period_in,
                     constant input pos_in,
                     inputs<> phi_in,
                     constant input rate_in,
                     outputs<> amp_out,
                     // --- output ---
                     constant input control signal );
// ---------------------- outputs ----------------
// Output is reconstructed signal.
// ----------------- inputs ----------------
// Resembles probe device or pin.
// ----------- node ids ------------
// Input node.
// ------------ phi --------------
// Lookup table for phi function.
// ------------ denom_in ----
// Coefficient used in polynomial rate equation.
// ------------ num_in -----------endmodule
