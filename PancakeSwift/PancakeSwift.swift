var eggsAmount: Int
let eggsMin: Int = 1
var milkAmount: Int
let milkMin: Int = 100 //milliletres
var flourAmount: Int
let flourMin: Int = 35 //grams

print("Hello, good day to you!")
print("")
print("How many eggs do you have?")
eggsAmount = Int(readLine()!)!
if (eggsAmount == 1) {
    print("You have \(eggsAmount) egg.")
} else {
    print("You have \(eggsAmount) eggs.")
}
//eggs done

print("How many milliletres of milk do you have?")
milkAmount = Int(readLine()!)!
if (milkAmount == 1) {
    print("You have \(milkAmount) milliletre of milk.")
} else {
    print("You have \(milkAmount) milliletres of milk.")
}
//milk done

print("How many grams of flour do you have?")
flourAmount = Int(readLine()!)!
if (flourAmount == 1) {
    print("You have \(flourAmount) gram of flour.")
} else {
    print("You have \(flourAmount) grams of flour.")
}
//flour done, to the next part

//calcuations
if (eggsAmount < eggsMin || milkAmount < milkMin || flourAmount < flourMin) {
    print("")
    print("Not enough ingredients, unfortunately!")
    print("Thank you for using this program.")
} else {
    print("")
    flourAmount = flourAmount / flourMin
    if (flourAmount == 1) {
        print("You have \(flourAmount) usable portion of flour.")
    } else {
        print("You have \(flourAmount) usable portions of flour.")
    }

    milkAmount = milkAmount / milkMin
    if (milkAmount == 1) {
        print("You have \(milkAmount) usable portion of milk.")
    } else {
        print("You have \(milkAmount) usable portions of milk.")
    }

    //find the smallest of the 3 values
    let smallestIngredient = min(eggsAmount, milkAmount, flourAmount)

    print("") //each portion = 2 pancakes
    print("You're able to make \(smallestIngredient * 2) pancakes.")
    print("")
    if (smallestIngredient * eggsMin == 1) {
        print("You will need \(smallestIngredient * eggsMin) egg.")
    } else {
        print("You will need \(smallestIngredient * eggsMin) eggs.")
    }
    print("You will need \(smallestIngredient * flourMin) grams of flour.")
    print("You will need \(smallestIngredient * milkMin) milliletres of milk.")
    print("")
    print("Don't forget to add a pinch of salt and baking soda!")
    print("Thank you for using this program.")
}