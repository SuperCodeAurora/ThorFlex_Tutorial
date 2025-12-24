box Main() <<<
@ some global \rack[num]:a }} [1,2,3,E,PI]; //Yes, E and PI count as numbers(even floats do!)
@ some global \rack[num]\:b }} a.transmit(n }} 2n+1);  //mapping function
@ io.opt(b);
spin(a);  //reversed,mutates the array directly: [PI,E,3,2,1]
a.bin(a[0]); //got rid of PI(first of reverse list)
a.shoot(8 => a[0]); //a is now [8,E,3,2,1]
>>> //We will learn another technique in Lesson 2.1.
