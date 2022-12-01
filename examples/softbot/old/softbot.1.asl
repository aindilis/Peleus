// Not yet functioning, simply copied over from peleus.asl

//---------------Initial states-----------------------------

// have something about a buffer:
	// check if the top buffer is currently visiting a file.
// if it is, check if that file is the todo list.
// if it is the to.do list, you are done.
// if it is not the to.do list, then try to open the todo list

// send commands over to FLP/Emacs.

buffer(a).
buffer(b).
visitingFile(a,todoList).
visitingFile(b,otherFile).

above(b,a).
onTop(b).

//---------------Desires------------------------------------
des([above(a,b),onTop(a)]).

//---------------Plans--------------------------------------
@p1[atomic]+des(Goals) : true <-  
	.print("Goals to plan: ",Goals);
	org.soton.peleus.act.plan(Goals,[maxSteps(10),makeGeneric(false)]);
	!checkGoals(Goals);
	.print("Goals ",Goals," were satisfied").

+!checkGoals([]) : true <-
	.print("checkGoals with empty list.").

@p2[atomic]+!checkGoals([H|T]) : true <-
	.print("Checking ", H);
  	org.soton.peleus.act.isTrue(H);
  	.print("List to be checked later: ", T);
	!checkGoals(T).

@p3[atomic]+!checkGoals(H) : true <-
	.print("Checking ", H);
  	org.soton.peleus.act.isTrue(H).

-!checkGoals([H|T]) : true <- .print("Failure.").

@action1(block, block) +!transpose(X,Y) <-
	-onTop(X);
	-above(X,Y);
	+onTop(Y);
	+above(Y,X).

+onTop(X) <-
	.print("added onTop(",X,").").

-onTop(X) <-
	.print("removed onTop(",X,").").