class Employee{
	int work_hrs=0;
	int wage_per_hr=20;
    int full_day_hr=8;
    int half_day_hr=4;
	int total_work_day=20;
    int total_wage=0;
    int total_work_hrs=100;
	void empWage(int totalwage,int workhrs){
		this.total_wage=totalwage;
		this.work_hrs=workhrs;
		System.out.println("monthly_wage="+total_wage);
        System.out.println("total_work_hrs="+work_hrs);
	}

}