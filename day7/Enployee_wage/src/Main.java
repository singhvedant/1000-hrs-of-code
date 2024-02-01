public class Main {
    public static void main(String[] args) {

        Employee e1 = new Employee("Bharat", 1, 200);
        int totalWorkHour=0;
        int totalWorkingDays=0;

        //it is a Not static method
        Main m1 = new Main();

        while(totalWorkingDays<20 && totalWorkHour<100) {

            int check = (int) ((Math.random() * 10)) % 3;

            if (check == 0) {
                e1.attendence = 0;
            } else if (check == 1) {
                e1.attendence = 1;
            } else {
                e1.attendence = 2;
            }

            switch (e1.attendence) {
                case 1:
                    System.out.println("\nEmployee is present");
                    e1.workHour = 8;
                    break;
                case 2:
                    System.out.println("\nEmployee is absent");
                    e1.workHour=0;
                    break;
                default:
                    System.out.println("\nEmployee worked part time");
                    e1.workHour = 4;

            }

            System.out.println("\nToday's earnings "+m1.calculateSalary(e1));


            totalWorkingDays++;
            totalWorkHour += e1.workHour;
            System.out.println("\nDay "+totalWorkingDays + " of working total "+totalWorkHour + " Hours Worked\n\n\n");


        }
        System.out.print("\n\nEmployee's monthly income is: ");
        System.out.println(m1.calculateIncome(e1,totalWorkHour));

    }
    double calculateSalary(Employee e){
        return e.workHour*e.wagePerHour;
    }
    double calculateIncome(Employee e,int totalWorkHour){
        return totalWorkHour*e.wagePerHour;
    }
}

