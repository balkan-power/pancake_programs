fun main() {
    var eggsAmount: Int?
    val eggsMin: Int = 1
    var milkAmount: Int?
    val milkMin: Int = 100 //milliletres
    var flourAmount: Int?
    val flourMin: Int = 35 //grams

    println("Hello, good day to you!")
    println("")
    println("How many eggs do you have?")
    eggsAmount = readLine()!!.toInt()
    if (eggsAmount == 1) {
        println("You have $eggsAmount egg.")
    } else {
        println("You have $eggsAmount eggs.")
    }
    //eggs done

    println("How many milliletres of milk do you have?")
    milkAmount = readLine()!!.toInt()
    if (milkAmount == 1) {
        println("You have $milkAmount milliletre of milk.")
    } else {
        println("You have $milkAmount milliletres of milk.")
    }
    //milk done

    println("How many grams of flour do you have?")
    flourAmount = readLine()!!.toInt()
    if (flourAmount == 1) {
        println("You have $flourAmount gram of flour.")
    } else {
        println("You have $flourAmount grams of flour.")
    }
    //flour done

    //calculations
    if (eggsAmount < eggsMin || milkAmount < milkMin || flourAmount < flourMin) {
        println("")
        println("Not enough ingredients, unfortunately!")
        println("Thank you for using this program.")
    } else {
        println("")
        flourAmount = flourAmount / flourMin
        if (flourAmount == 1) {
            println("You have $flourAmount usable portion of flour.")
        } else {
            println("You have $flourAmount usable portions of flour.")
        }

        milkAmount = milkAmount / milkMin
        if (milkAmount == 1) {
            println("You have $milkAmount usable portion of milk.")
        } else {
            println("You have $milkAmount usable portions of milk.")
        }

        //find the smallest of the 3 values
        var smallestIngredient = minOf(eggsAmount, milkAmount, flourAmount)

        println("") //each portion = 2 pancakes
        println("You're able to make ${smallestIngredient * 2} pancakes.")
        println("")
        if (smallestIngredient * eggsMin == 1) {
            println("You will need ${smallestIngredient * eggsMin} egg.")
        } else {
            println("You will need ${smallestIngredient * eggsMin} eggs.")
        }
        println("You will need ${smallestIngredient * flourMin} grams of flour.")
        println("You will need ${smallestIngredient * milkMin} milliletres of milk.")
        println("")
        println("Don't forget to add a pinch of salt and baking soda!")
        println("Thank you for using this program.")
    }
}