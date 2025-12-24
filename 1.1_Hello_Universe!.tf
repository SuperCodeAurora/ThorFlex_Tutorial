//Hello Universe!
usage {io};   //equivalent to #include <iostream> in cpp.

box Main() <<< //similar to int main() { in cpp.
@ io.opt("Hello Universe!");  //@ replaces the indentation tab in ThorFlex. io.opt is printing.
>>> //Close the Main box.
