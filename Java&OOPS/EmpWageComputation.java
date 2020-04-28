import java.util.*;
//Calculate Wages till a condition of total working hours=100 or days is reached to 20 for a month

class EmpWageComputation{
   public static void main(String[] args){
    String emp_status="";
    String emp_type="";
    int day_count=1;
    int total_wage=0;
    int daily_wage=0;
    int work_hrs=0;
	//create an Employeeobject
	Employee emp=new Employee();
	//create employee attendance object
	Attendance empAtt=new Attendance();
    System.out.println("Welcome to Employee wage computation program");
	//looping through condition
    while(day_count<emp.total_work_day && work_hrs<emp.total_work_hrs){
        emp_status=empAtt.isPresent();//check emp is present or absent
         switch(emp_status){
            case "present":
                  emp_type=empAtt.empType();//check emp is part time or full time
                  switch(emp_type){
                     case "full_time":
                        System.out.println("Employee is present and is a full time");
                        daily_wage=(emp.wage_per_hr*emp.full_day_hr);
                        System.out.println("daily_wage="+daily_wage);
                        total_wage=(total_wage+daily_wage);
                        work_hrs=work_hrs+8;
                        day_count++;
                        break;
                     case "part_time":
                        System.out.println("Employee is present and is a part time");
                        daily_wage=(emp.wage_per_hr*emp.full_day_hr);
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
     emp.empWage(total_wage,work_hrs);//send to Employee and print monthly wage
   }//main
}//class
