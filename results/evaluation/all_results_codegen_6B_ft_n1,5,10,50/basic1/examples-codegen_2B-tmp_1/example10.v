// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
#include "Wire.h"
#include "Semicolon.h"
#include "Prototype.h"
#include "Rule_side_effects.h"

initial all normal wire_assign | connect
    Assign_olds & assign &
    Assign_moves & assign &
    Assign_delayed & assign &
    Assign_move_dir & assign &
    Assign_create_paritem &  assign &
    Assign_delayed_move_dir
    Wire;
// generate all assignments. Maybe load all assignments from file
#include "Search_assignments.h"
#include "Assignments_wire.h"
#include "Assignments_input.h"
// that outputs, that inputs
#include "Shared_terms.h"

rule Side_effects() =
    Low_mem == yes ?endmodule
