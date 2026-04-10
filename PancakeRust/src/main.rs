#![allow(non_snake_case)]
use std::io;

fn main() {
    let eggsMin: i32 = 1;
    let milkMin: i32 = 100; //milliletres
    let flourMin: i32 = 35; //grams

    let mut input = String::new(); // user input variable

    println!("Hello, good day to you!");
    println!("");
    println!("How many eggs do you have?");
    io::stdin().read_line(&mut input).expect("");
    let eggsAmount: i32 = input.trim().parse().expect("");
    if eggsAmount == 1 {
        println!("You have {} egg.", eggsAmount);
    } else {
        println!("You have {} eggs.", eggsAmount);
    }
    input.clear();
    //eggs done

    println!("How many milliletres of milk do you have?");
    io::stdin().read_line(&mut input).expect("");
    let milkAmount: i32 = input.trim().parse().expect("");
    if milkAmount == 1 {
        println!("You have {} milliletre of milk.", milkAmount);
    } else {
        println!("You have {} milliletres of milk.", milkAmount);
    }
    input.clear();
    //milk done

    println!("How many grams of flour do you have?");
    io::stdin().read_line(&mut input).expect("");
    let flourAmount: i32 = input.trim().parse().expect("");
    if flourAmount == 1 {
        println!("You have {} grams of flour.", flourAmount);
    } else {
        println!("You have {} grams of flour.", flourAmount);
    }
    input.clear();
    //flour done, to the next part

    //calculations
    if eggsAmount < eggsMin || milkAmount < milkMin || flourAmount < flourMin {
        println!("");
        println!("Not enough ingredients, unfortunately!");
        println!("Thank you for using this program.");
    } else {
        println!("");
        let flourAmount: i32 = flourAmount / flourMin;
        if flourAmount == 1 {
            println!("You have {} usable portion of flour.", flourAmount);
        } else {
            println!("You have {} usable portions of flour.", flourAmount);
        }

        let milkAmount: i32 = milkAmount / milkMin;
        if milkAmount == 1 {
            println!("You have {} usable portion of milk.", milkAmount);
        } else {
            println!("You have {} usable portions of milk.", milkAmount);
        }

        //find the smallest number of 3 values
        let smallestIngredient = flourAmount.min(eggsAmount.min(milkAmount));

        println!(""); //each portion = 2 pancakes
        println!("You're able to make {} pancakes.", smallestIngredient * 2,);
        println!("");
        if smallestIngredient * eggsMin == 1 {
            println!("You will need {} egg.", smallestIngredient * eggsMin,);
        } else {
            println!("You will need {} eggs.", smallestIngredient * eggsMin,);
        }
        println!("You will need {} grams of flour.", smallestIngredient * flourMin,);
        println!("You will need {} milliletres of milk.", smallestIngredient * milkMin,);
        println!("");
        println!("Don't forget to add a pinch of salt and baking soda!");
        println!("Thank you for using this program.");
    }
}
