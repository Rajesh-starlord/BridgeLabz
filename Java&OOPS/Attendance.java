class Attendance{
	
	String isPresent(){
		double attCheck=Math.random();
        if(attCheck>0.5){
           return "present";
        }else{
           return "absent";
        }
		
	}
	String empType(){
		double category=Math.random();
            if (category>0.5){
				return "full_time";
            }else{
                return "part_time";
            }
	}
}