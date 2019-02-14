
PROGRAM _INIT
	 
END_PROGRAM

PROGRAM _CYCLIC
	CASE next_box.type OF
		sml:
			IF di_laser4 THEN
				timer.PT := T#350ms;
				timer.IN := TRUE;
			END_IF
			IF timer.Q THEN
				timer.IN := FALSE;
				timer();
				//push
				push_timer.IN := TRUE;
				push_timer.PT := T#400ms;
				push_timer();
				do_pusher1 := TRUE;
			END_IF
			IF push_timer.Q THEN
				do_pusher1 := FALSE;
				push_timer.IN := FALSE;
			END_IF
		med:
			IF di_laser4 THEN
				timer.PT := T#1250ms;
				timer.IN := TRUE;
			END_IF
			IF timer.Q THEN
				timer.IN := FALSE;
				timer();
				//push
				push_timer.IN := TRUE;
				push_timer.PT := T#400ms;
				push_timer();
				do_pusher2 := TRUE;
			END_IF
			IF push_timer.Q THEN
				do_pusher2 := FALSE;
				push_timer.IN := FALSE;
			END_IF
	END_CASE
	
	timer();
	push_timer();
END_PROGRAM

PROGRAM _EXIT
	 
END_PROGRAM

