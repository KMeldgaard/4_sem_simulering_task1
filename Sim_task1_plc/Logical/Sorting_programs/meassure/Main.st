
PROGRAM _INIT
	 STATE := waiting;
END_PROGRAM

PROGRAM _CYCLIC
	//state logic
	CASE STATE OF
		waiting:
			IF di_laser1 THEN
				STATE := meassuring;
			END_IF
			
		meassuring:
			IF NOT di_laser1 THEN
				STATE := calculation;
			END_IF
			
		calculation:
			
	END_CASE
	
	//state I/O
	CASE STATE OF
		meassuring:
			laser_timer.IN := TRUE;
			laser_timer.PT := T#2000ms;
			laser_timer();
			IF di_laser1 THEN
				current_box.width := BELT_WIDTH - ai_laser1;
			END_IF
		
		calculation:
			current_box.lenght := TIME_TO_UINT (laser_timer.ET);
			current_box.area := current_box.lenght * 2 + current_box.width * 2;
			IF current_box.area < 800 THEN
				current_box.type := sml;
			ELSIF current_box.area < 1000 THEN
				current_box.type := med;
			ELSE
				current_box.type := lrg;
			END_IF
			
			next_box := current_box;
			
			laser_timer.IN := FALSE;
			laser_timer();
			STATE := waiting;
		
	END_CASE
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

