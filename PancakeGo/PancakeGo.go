package main

import "fmt"

func main() {
	var eggsAmount int
	const eggsMin int = 1
	var milkAmount int
	const milkMin int = 100 //milliletres
	var flourAmount int
	const flourMin int = 35 //grams

	fmt.Println("Hello, good day to you!")
	fmt.Println("")
	fmt.Println("How many eggs do you have?")
	fmt.Scanln(&eggsAmount)
	if eggsAmount == 1 {
		fmt.Println("You have", eggsAmount, "egg.")
	} else {
		fmt.Println("You have", eggsAmount, "eggs.")
	}
	//eggs done

	fmt.Println("How many milliletres of milk do you have?")
	fmt.Scanln(&milkAmount)
	if milkAmount == 1 {
		fmt.Println("You have", milkAmount, "milliletre of milk.")
	} else {
		fmt.Println("You have", milkAmount, "milliletres of milk.")
	}
	//milk done

	fmt.Println("How many grams of flour do you have?")
	fmt.Scanln(&flourAmount)
	if flourAmount == 1 {
		fmt.Println("You have", flourAmount, "gram of flour.")
	} else {
		fmt.Println("You have", flourAmount, "grams of flour.")
	}
	//flour done, to the next part

	//calculations
	if eggsAmount < eggsMin || milkAmount < milkMin || flourAmount < flourMin {
		fmt.Println("")
		fmt.Println("Not enough ingredients, unfortunately!")
		fmt.Println("Thank you for using this program.")
	} else {
		fmt.Println("")
		flourAmount = flourAmount / flourMin
		if flourAmount == 1 {
			fmt.Println("You have", flourAmount, "usable portion of flour.")
		} else {
			fmt.Println("You have", flourAmount, "usable portions of flour.")
		}

		milkAmount = milkAmount / milkMin
		if milkAmount == 1 {
			fmt.Println("You have", milkAmount, "usable portion of milk.")
		} else {
			fmt.Println("You have", milkAmount, "usable portions of milk.")
		}

		//find the smallest number of 3 values
		var smallestIngredient int = min(eggsAmount, milkAmount, flourAmount)

		fmt.Println("") //each portion = 2 pancakes
		fmt.Println("You're able to make", smallestIngredient*2, "pancakes.")
		fmt.Println("")
		if smallestIngredient*eggsMin == 1 {
			fmt.Println("You will need", smallestIngredient*eggsMin, "egg.")
		} else {
			fmt.Println("You will need", smallestIngredient*eggsMin, "eggs.")
		}
		fmt.Println("You will need", smallestIngredient*flourMin, "grams of flour.")
		fmt.Println("You will need", smallestIngredient*milkMin, "milliletres of milk.")
		fmt.Println("")
		fmt.Println("Don't forget to add a pinch of salt and baking soda!")
		fmt.Println("Thank you for using this program.")
	}
}
