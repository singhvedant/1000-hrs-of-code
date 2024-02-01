public class Address {
    String aadhaarNo, first_name, last_name, city, zip, full_address, contact_no;

    Address (String aadhaarNo, String first_name, String last_name, String city, String zip, String full_address, String contact_no){
        this.aadhaarNo = aadhaarNo;
        this.first_name = first_name;
        this.last_name = last_name;
        this.city = city;
        this.zip = zip;
        this.full_address = full_address;
        this.contact_no = contact_no;
    }
    public void print_address() {
        System.out.println("\n" + first_name + " " + last_name + "\n" + full_address + "\n" + city + " " + zip + "\n" + "Ph no. : " + contact_no + "\n");
    }
}

