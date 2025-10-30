@eggsAmount
eggsMin = 1
@milkAmount
milkMin = 100 #milliletres
@flourAmount
flourMin = 35 #grams

puts "Hello, good day to you!"
puts ""
puts "How many eggs do you have?"
eggsAmount = gets.to_i
if eggsAmount == 1
    puts "You have #{eggsAmount} egg."
else
    puts "You have #{eggsAmount} eggs."
end
#eggs done

puts "How many milliletres of milk do you have?"
milkAmount = gets.to_i
if milkAmount == 1
    puts "You have #{milkAmount} milliletre of milk."
else
    puts "You have #{milkAmount} milliletres of milk."
end
#milk done

puts "How many grams of flour do you have?"
flourAmount = gets.to_i
if flourAmount == 1
    puts "You have #{flourAmount} gram of flour."
else
    puts "You have #{flourAmount} grams of flour."
end
#flour done, to the next part

#calculations
if eggsAmount < eggsMin || milkAmount < milkMin || flourAmount < flourMin
    puts ""
    puts "Not enough ingredients, unfortunately!"
    puts "Thank you for using this program."
else
    puts ""
    flourAmount = flourAmount / flourMin
    if flourAmount == 1
        puts "You have #{flourAmount} usable portion of flour."
    else
        puts "You have #{flourAmount} usable portions of flour."
    end

    milkAmount = milkAmount / milkMin
    if milkAmount == 1
        puts "You have #{milkAmount} usable portion of milk."
    else
        puts "You have #{milkAmount} usable portions of milk."
    end

    #find the smallest number of 3 values
    ingredients = [eggsAmount, milkAmount, flourAmount]
    smallestIngredient = ingredients.min

    puts "" #each portion = 2 pancakes
    puts "You're able to make #{smallestIngredient * 2} pancakes."
    puts ""
    if eggsAmount == 1
        puts "You will need #{smallestIngredient * eggsMin} egg."
    else
        puts "You will need #{smallestIngredient * eggsMin} eggs."
    end
    puts "You will need #{smallestIngredient * flourMin} grams of flour."
    puts "You will need #{smallestIngredient * milkMin} milliletres of milk."
    puts ""
    puts "Don't forget to add a pinch of salt and baking soda!"
    puts "Thank you for using this program."
end