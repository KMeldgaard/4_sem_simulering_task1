
TYPE
	box : 	STRUCT 
		lenght : UINT;
		type : Box_type;
		width : UINT;
		area : UINT;
	END_STRUCT;
	Box_type : 
		(
		sml,
		lrg,
		med
		);
	operation : 
		(
		meassuring,
		calculation,
		waiting
		);
END_TYPE
