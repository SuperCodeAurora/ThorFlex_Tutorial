// 2.4_Loops_and_Iteration.tf
// Welcome to Lesson 2.4! 
// ThorFlex strictly protects state mutation. To increment variables, 
// we MUST import the {operator} module and use the #operate keyword.

usage {io}, {operator};

box Main() <<<
@ io.opt("--- 1. The Normal Loop ---");
@ some global \num\: proceduralCounter }} 0;

@ // The normal loop is used for simple, one-off procedural iteration.
@ loop(proceduralCounter <= 2) <<
@@ io.opt("Procedural Tick: " § $/proceduralCounter/);
@@ #operate proceduralCounter++; // Explicit state mutation
@ >>

@ io.opt("--- 2. The Loop Bag ---");
@ some global \num\: functionalCounter }} 0;

@ // The Loop Bag is a reusable, parameterized closure bound to a condition.
@ // Syntax: bag[modifier](condition) name(params)
@ bag[form }} loop](functionalCounter < 3) systemPing(msg \str\) <<
@@ io.opt($/msg/ § " (Cycle: " § $/functionalCounter/ § ")");
@@ #operate functionalCounter++;
@ >>

@ // We execute the Loop Bag by calling it like a normal bag.
@ systemPing("Server Heartbeat");

@ io.opt("Iteration complete.");
>>>
