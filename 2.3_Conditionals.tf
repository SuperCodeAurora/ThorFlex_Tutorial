// Lesson 2.3: Pure Conditionals Example
usage {io};

box Main() <<<
@ // Define our test variable
@ some global \num\: temperature }} 85;

@ // Evaluate the state using 2.3 syntax
@ if(temperature > 100) => do <<
@@ io.opt("Warning: System is overheating!");
@ >> also if(temperature > 70) => do <<
@@ // This block will execute since 85 > 70
@@ io.opt("System temperature is nominal.");
@ >> else <<
@@ // The fallback requires no '=> do' bridge
@@ io.opt("System is running cold.");
@ >>

@ io.opt("Diagnostic complete.");
>>> //logical operators: AND, OR, NOT
