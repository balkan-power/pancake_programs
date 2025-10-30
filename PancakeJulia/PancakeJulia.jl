eggsMin = 1
milkMin = 100 #milliletres
flourMin = 35 #grams

println("Hello, good day to you!")
println("")
println("How many eggs do you have?")
eggsAmount = parse(Int, readline())
if eggsAmount == 1
    println("You have $eggsAmount egg.")
else
    println("You have $eggsAmount eggs.")
end
#eggs done

println("How many milliletres of milk do you have?")
milkAmount = parse(Int, readline())
if milkAmount == 1
    println("You have $milkAmount milliletre of milk.")
else
    println("You have $milkAmount milliletres of milk.")
end
#milk done

println("How many grams flour do you have?")
flourAmount = parse(Int, readline())
if flourAmount == 1
    println("You have $flourAmount gram of flour.")
else
    println("You have $flourAmount grams of flour.")
end
#flour done, to the next part

#calculations
if eggsAmount < eggsMin || milkAmount < milkMin || flourAmount < flourMin
    println("")
    println("Not enough ingredients, unfortunately!")
    println("Thank you for using this program.")
else
    println("")
    flourAmount = flourAmount ÷ flourMin
    if flourAmount == 1
        println("You have $(Int(floor(flourAmount))) usable portion of flour.")
    else
        println("You have $(Int(floor(flourAmount))) usable portions of flour.")
    end

    milkAmount = milkAmount ÷ milkMin
    if milkAmount == 1
        println("You have $(Int(floor(milkAmount))) usable portion of milk.")
    else
        println("You have $(Int(floor(milkAmount))) usable portions of milk.")
    end

    #find the smallest number of 3 values
    ingredients = [eggsAmount, milkAmount, flourAmount]
    smallestIngredient = minimum(ingredients)

    println("") #each portion = 2 pancakes
    println("You're able to make $(Int(floor(smallestIngredient * 2))) pancakes.")
    println("")
    if eggsAmount == 1
        println("You will need $(Int(floor(smallestIngredient * eggsMin))) egg.")
    else
        println("You will need $(Int(floor(smallestIngredient * eggsMin))) eggs.")
    end
    println("You will need $(Int(floor(smallestIngredient * flourMin))) grams of flour")
    println("You will need $(Int(floor(smallestIngredient * milkMin))) milliletres of milk.")
    println("")
    println("Don't forget to add a pinch of salt and baking soda!")
    println("Thank you for using this program.")
end