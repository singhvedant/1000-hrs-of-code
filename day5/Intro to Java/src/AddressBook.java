import java.util.*;

public class AddressBook  {
    Map<String, Address> addressMap = new HashMap<>();

    public void add_address(Address address) {
        addressMap.put(address.aadhaarNo, address);
    }

    public void print_address_by_aadhaar (String aadhaarNumber) {
        Address person = addressMap.get(aadhaarNumber);
        System.out.println("\n" + person.first_name + " " + person.last_name + "\n" + person.full_address + "\n" + person.city + " " + person.zip + "\n" + "Ph no. : " + person.contact_no + "\n");
    }

    public void print_book() {
        addressMap.forEach((key, value) -> value.print_address());
    }
}

