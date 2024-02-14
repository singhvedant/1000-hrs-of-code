import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegexExample {
    public static void main(String[] args) {
        // The string to search for dates
        Scanner sc = new Scanner(System.in);
        String text = sc.next();

        // Regular expression pattern to match dates in MM/DD/YYYY format
        String datePattern = "^(0[1-9]|1[0-2])/(0[1-9]|[12][0-9]|3[01])/([0-9]{4})$";

        // Compile the regular expression pattern
        Pattern pattern = Pattern.compile(datePattern);

        // Create a matcher for the input string
        Matcher matcher = pattern.matcher(text);

        // Find and print all matches
        while (matcher.find()) {
            System.out.println("Found date: " + matcher.group());
        }
    }
}
