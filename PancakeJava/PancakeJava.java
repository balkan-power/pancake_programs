import java.util.Scanner;

public class PancakeJava {

    public static void main(String[] args) {
        int eggsAmount;
        int eggsMin = 1;
        int milkAmount;
        int milkMin = 100; //milliletres
        int flourAmount;
        int flourMin = 35; //grams

        Scanner userInput;
        System.out.println("Hello, good day to you!");
        System.out.println("");
        System.out.println("How many eggs do you have?");
        userInput = new Scanner(System.in);
        eggsAmount = userInput.nextInt();
        if (eggsAmount == 1) {
            System.out.println("You have " + eggsAmount + " egg.");
        } else {
        System.out.println("You have " + eggsAmount + " eggs.");
        }
        //eggs done

        System.out.println("How many milliletres of milk do you have?");
        milkAmount = userInput.nextInt();
        if (milkAmount == 1) {
            System.out.println("You have " + milkAmount + " milliletre of milk.");
        } else {
        System.out.println("You have " + milkAmount + " milliletres of milk.");
        }
        //milk done

        System.out.println("How many grams flour do you have?");
        flourAmount = userInput.nextInt();
        if (flourAmount == 1) {
            System.out.println("You have " + flourAmount + " gram of flour.");
        } else {
        System.out.println("You have " + flourAmount + " grams of flour.");
        }
        userInput.close();
        //flour done, to the next part

        //calculations
        if (eggsAmount < eggsMin || milkAmount < milkMin || flourAmount < flourMin) {
            System.out.println("");
            System.out.println("Not enough ingredients, unfortunately!");
            System.out.println("Thank you for using this program.");
        } else {
            System.out.println("");
            flourAmount = flourAmount / flourMin;
            if (flourAmount == 1) {
                System.out.println("You have " + flourAmount + " usable portion of flour.");
            } else {
                System.out.println("You have " + flourAmount + " usable portions of flour.");
            }
            
            milkAmount = milkAmount / milkMin;
            if (milkAmount == 1) {
                System.out.println("You have " + milkAmount + " usable portion of milk.");
            } else {
                System.out.println("You have " + milkAmount + " usable portions of milk.");
            }
            
            //find the smallest number of the 3 values
            int smallestIngredient = Math.min(flourAmount, Math.min(milkAmount, eggsAmount));
            
            System.out.println(""); //each portion = 2 pancakes
            System.out.println("You're able to make " + smallestIngredient * 2 + " pancakes.");
            System.out.println("");
            if (smallestIngredient * eggsMin == 1) {
            System.out.println("You will need " + smallestIngredient * eggsMin + " egg.");
            } else {
            System.out.println("You will need " + smallestIngredient * eggsMin + " eggs.");
            }
            System.out.println("You will need " + smallestIngredient * flourMin + " grams of flour.");
            System.out.println("You will need " + smallestIngredient * milkMin + " milliletres of milk.");
            System.out.println("");
            System.out.println("Don't forget to add a pinch of salt and baking soda!");
            System.out.println("Thank you for using this program.");
        }
    }
}