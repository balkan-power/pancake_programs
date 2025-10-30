eggsAmount = int
eggsMin = int(1)
milkAmount = int
milkMin = int(100) #milliletres
flourAmount = int
flourMin = int(35) #grams

print("Hello, good day to you!")
print("")
print("How many eggs do you have?")
eggsAmount = int(input())
if eggsAmount == 1:
    print("You have " + str(eggsAmount) + " egg.")
else:
    print("You have " + str(eggsAmount) + " eggs.")
#eggs done

print("How many milliletres of milk do you have?")
milkAmount = int(input())
if milkAmount == 1:
    print("You have " + str(milkAmount) + " milliletre of milk.")
else:
    print("You have " + str(milkAmount) + " milliletres of milk.")
#milk done

print("How many grams flour do you have?")
flourAmount = int(input())
if flourAmount == 1:
    print("You have " + str(flourAmount) + " gram of flour.")
else:
    print("You have " + str(flourAmount) + " grams of flour.")
#flour done, to the next part

#calculations
if eggsAmount < eggsMin or milkAmount < milkMin or flourAmount < flourMin:
    print("")
    print("Not enough ingredients, unfortunately!")
    print("Thank you for using this program.")
else:
    print("")
    flourAmount = flourAmount // flourMin
    if flourAmount == 1:
        print("You have " + str(flourAmount) + " usable portion of flour.")
    else:
        print("You have " + str(flourAmount) + " usable portions of flour.")

    milkAmount = milkAmount // milkMin
    if milkAmount == 1:
        print("You have " + str(milkAmount) + " usable portion of milk.")
    else:
        print("You have " + str(milkAmount) + " usable portions of milk.")

    #find the smallest number of the 3 values
    ingredients = [eggsAmount, milkAmount, flourAmount]
    smallestIngredient = min(ingredients)

    print("") #each portion = 2 pancakes
    print(f"You're able to make {int(smallestIngredient * 2)} pancakes.")
    print("")
    if eggsAmount == 1:
        print(f"You will need {int(smallestIngredient * eggsMin)} egg.")
    else:
        print(f"You will need {int(smallestIngredient * eggsMin)} eggs.")
    print(f"You will need {int(smallestIngredient * flourMin)} grams of flour.")
    print(f"You will need {int(smallestIngredient * milkMin)} milliletres of milk.")
    print("")
    print("Don't forget to add a pinch of salt and baking soda!")
    print("Thank you for using this program.")