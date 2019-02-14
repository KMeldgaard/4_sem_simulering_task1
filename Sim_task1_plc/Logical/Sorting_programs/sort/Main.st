
PROGRAM _INIT
	push_timer.PT := T#300ms;
	 
END_PROGRAM

PROGRAM _CYCLIC
	CASE next_box.type OF
		sml:
			trigger.CLK := di_laser2;
			trigger();
			IF trigger.Q THEN
				do_pusher1 :=  NOT push_timer.Q;
				push_timer.IN := TRUE;
				push_timer();
			END_IF
			IF NOT push_timer.Q THEN
				do_pusher1 := FALSE;
				push_timer.IN := FALSE;
				push_timer();
			END_IF
				
		med:
			trigger.CLK := di_laser3;
			do_pusher2 := NOT push_timer.Q;
			trigger();
			IF trigger.Q THEN
				push_timer.IN := TRUE;
				push_timer();
			END_IF
			(*IF NOT push_timer.Q THEN
				push_timer.IN := FALSE;
				push_timer();
			END_IF*)
			
		lrg:
			//DAB
			do_pusher1 := FALSE;
			do_pusher2 := FALSE;			
	END_CASE
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

