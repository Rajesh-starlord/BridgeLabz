class Employee{
	
	public final int wage_per_hr=20;
    public final int full_day_hr=8;
    public final int half_day_hr=4;
	public final int total_work_day=20;
    public final int total_work_hrs=100;
	
	String emp_status="";
    String emp_type="";
    int day_count=1;
    int total_wage=0;
    int daily_wage=0;
    int work_hrs=0;
	
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
	void print(int totalwage, int workhrs){
		System.out.println("monthly_wage="+totalwage);
        System.out.println("total_work_hrs="+workhrs);
	}
	void empWage(){
		while(day_count<total_work_day && work_hrs<total_work_hrs){
			emp_status=isPresent();//check emp is present or absent
			 switch(emp_status){
				case "present":
					  emp_type=empType();//check emp is part time or full time
					  switch(emp_type){
						 case "full_time":
							System.out.println("Employee is present and is a full time");
							daily_wage=(wage_per_hr*full_day_hr);
							System.out.println("daily_wage="+daily_wage);
							total_wage=(total_wage+daily_wage);
							work_hrs=work_hrs+8;
							day_count++;
							break;
						 case "part_time":
							System.out.println("Employee is present and is a part time");
							daily_wage=(wage_per_hr*full_day_hr);
							System.out.println("daily_wage="+daily_wage);
							total_wage=(total_wage+daily_wage);
							work_hrs=work_hrs+4;
							day_count++;
							break;
					  }
				case "absent":
				   System.out.println("Employee is absent");
				   System.out.println("daily_wage="+0);
				   day_count++;
				break;
			 }//switch
		  }//while
		  print(total_wage,work_hrs);//send to Employee and print monthly wage	  
	}
}