public abstract class UniversityMember {
    private final String name;
    private final String id;
    private final String email;

    protected UniversityMember(String name, String id, String email) {
        this.name = name;
        this.id = id;
        this.email = email;
    }

    protected String getDetails() {
        return "Name: " + name + ", ID: " + id + ", Email: " + email;
    }

}
