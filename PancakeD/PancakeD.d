import std.stdio;
import std.algorithm;
import std.string : strip;
import std.conv : to;

void main() {
    int eggsAmount;
    int eggsMin = 1;
    int milkAmount;
    int milkMin = 100; //millimetres
    int flourAmount;
    int flourMin = 35; //grams

    writeln("Hello, good day to you!");
    writeln("");
    writeln("How many eggs do you have?");
    eggsAmount = readln().strip.to!int;
    if (eggsAmount == 1) {
        writeln("You have ", eggsAmount, " egg.");
    } else {
        writeln("You have ", eggsAmount, " eggs.");
    }
    //eggs done

    writeln("How many milliletres of milk do you have?");
    milkAmount = readln().strip.to!int;
    if (milkAmount == 1) {
        writeln("You have ", milkAmount, " milliletre of milk.");
    } else {
        writeln("You have ", milkAmount, " milliletres of milk.");
    }
    //milk done

    writeln("How many grams flour do you have?");
    flourAmount = readln().strip.to!int;
    if (flourAmount == 1) {
        writeln("You have ", flourAmount, " gram of flour.");
    } else {
        writeln("You have ", flourAmount, " grams of flour.");
    }
    //flour done, to the next part

    //calculations
    if (eggsAmount < eggsMin || milkAmount < milkMin || flourAmount < flourMin) {
        writeln("");
        writeln("Not enough ingredients, unfortunately!");
        writeln("Thank you for using this program.");
    } else {
        writeln("");
        flourAmount = flourAmount / flourMin;
        if (flourAmount == 1) {
            writeln("You have ", flourAmount, " usable portion of flour.");
        } else {
            writeln("You have ", flourAmount, " usable portions of flour.");
        }

        milkAmount = milkAmount / milkMin;
        if (milkAmount == 1) {
            writeln("You have ", milkAmount, " usable portion of milk.");
        } else {
            writeln("You have ", milkAmount, " usable portions of milk.");
        }

        //find the smallest number of 3 values
        int smallestIngredient = min(flourAmount, min(eggsAmount, milkAmount));

        writeln(""); //each portion = 2 pancakes
        writeln("You're able to make ", smallestIngredient * 2, " pancakes.");
        writeln("");
        if (smallestIngredient * eggsMin == 1) {
            writeln("You will need ", smallestIngredient * eggsMin, " egg.");
        } else {
            writeln("You will need ", smallestIngredient * eggsMin, " eggs.");
        }
        writeln("You will need ", smallestIngredient * flourMin, " grams of flour.");
        writeln("You will need ", smallestIngredient * milkMin, " milliletres of milk.");
        writeln("");
        writeln("Don't forget to add a pinch of salt and baking soda!");
        writeln("Thank you for using this program.");
    }
}