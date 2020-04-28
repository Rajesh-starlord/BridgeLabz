import java.util.*;
//UC-6 Calculate Wages till a condition of total working hours or days is reached for a month

class EmpWageComputationUc3{
   public static void main(String[] args)throws Exception{
      int wage_per_hr=20;
      int full_day_hr=8;
      int half_day_hr=4;
      String emp_status="";
      String emp_type="";
      int day_count=1;
      int total_work_day=20;
      int total_wage=0;
      int daily_wage=0;
      int work_hrs=0
      int total_work_hrs=100;
      System.out.println("Welcome to Employee wage computation program");
      while(day_count<total_work_day && work_hrs<total_work_hrs){
         double attCheck=Math.random();
         if(attCheck>0.5){
            emp_status="present";
         }else{
            emp_status="absent";
         }
         switch(emp_status){
            case "present"://check emp is part time or full time
                  double category=Math.random();
                  if (category>0.5){
                     emp_type="full_time";
                  }else{
                     emp_type="part_time";
                  }
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
               System.out.println("daily_wage="+(wage_per_hr*0));
               day_count++;
            break;
         }//switch
      }//while
      System.out.println("monthly_wage="+total_wage);
      System.out.println("total_work_hrs="+work_hrs);
   }//main
}//class
