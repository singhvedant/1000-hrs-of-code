public class Student extends UniversityMember {
    private final String course;

    public Student(String name, String id, String email, String course) {
        super(name, id, email);
        this.course = course;
    }

    public void displayStudentDetails() {
        System.out.println(getDetails() + ", Course: " + course);
    }
}
