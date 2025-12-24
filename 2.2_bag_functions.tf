box Main() <<<
@ bag sayHi(name \str\) <<  //Correct syntax for functions in the main environment.Remember how you put types between \…\? Same with params.
@@ return("Oh, hello" § $/name/); // § is combining strings. Unlike other languages, return(); also prints the result.
@ >>
//You can call this later.
@ sayHi("Alice"); //Oh, hello Alice!
@ sayHi("Bob"); //Oh, hello Bob!
>>>
