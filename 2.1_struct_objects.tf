LEGO Toy <<< //Kind of innovative,right? This is OUTSIDE the box.
@ some global \brick<str>\: name, //We do NOT give it a value, because it will be given in the main box.
@ \brick<num>\: numOfComponents, //A shortcut for not having to write "some global" EVERY SINGLE TIME. 
@ \brick<bool>\: isGood;
>>>(outerBox available /Toy/); //Make it available for other boxes.
box Main() <<<
@ some global \tags\ by /Toy/: toy1 }} <<
@@ name }} "Super high tech LEGO Robot",
@@ numOfComponents }} 7000,
@@ isGood }} true;
@ >>

