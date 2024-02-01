public class Professor extends UniversityMember {
    private final String department;

    public Professor(String name, String id, String email, String department) {
        super(name, id, email);
        this.department = department;
    }

    public void displayProfessorDetails() {
        System.out.println(getDetails() + ", Department: " + department);
    }
}
