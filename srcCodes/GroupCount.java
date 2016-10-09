package Regex;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class GroupCount {
   public static void main(String args[]) {
      Pattern p = Pattern.compile("J(ava)");
      //String candidateString = "This is Java. This is a Java example.";
      Matcher matcher = p.matcher(null);
      int numberOfGroups = matcher.groupCount();
      System.out.println("numberOfGroups =" + numberOfGroups);
   }
}