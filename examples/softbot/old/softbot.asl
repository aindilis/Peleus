// Not yet functioning, simply copied over from peleus.asl

//---------------Initial states-----------------------------

// have something about a buffer:
	// check if the top buffer is currently visiting a file.
// if it is, check if that file is the todo list.
// if it is the to.do list, you are done.
// if it is not the to.do list, then try to open the todo list

// send commands over to FLP and Emacs.

buffer(a).
buffer(b).
visitingFile(a,todoList).
visitingFile(b,otherFile).

above(b,a).
onTop(b).

//---------------Desires------------------------------------
// des([visitingFile(X,todoList),onTop(X)]).
des([onTop(b)]).

//---------------Plans--------------------------------------
@p1[atomic]+des(Goals) : true <-  
	.print("Goals to plan: ",Goals);
	org.soton.peleus.act.plan(Goals,[maxSteps(10),makeGeneric(false)]);
	!checkGoals(Goals);
	.print("Goals ",Goals," were satisfied");
	.stopMAS.

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
