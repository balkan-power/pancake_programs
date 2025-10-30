local eggsAmount
local eggsMin = 1
local milkAmount
local milkMin = 100 --milliletres
local flourAmount
local flourMin = 35 --grams

print("Hello, good day to you!")
print("")
print("How many eggs do you have?")
eggsAmount = io.read("*n")
if eggsAmount == 1 then
    print("You have " .. eggsAmount .. " egg.")
else
    print("You have " .. eggsAmount .. " eggs.")
end
--eggs done

print("How many milliletres of milk do you have?")
milkAmount = io.read("*n")
if milkAmount == 1 then
    print("You have " .. milkAmount .. " milliletre of milk.")
else
    print("You have " .. milkAmount .. " milliletres of milk.")
end
--milk done

print("How many grams flour do you have?")
flourAmount = io.read("*n")
if flourAmount == 1 then
    print("You have " .. flourAmount .. " gram of flour.")
else
    print("You have " .. flourAmount .. " grams of flour.")
end
--flour done, to the next part

--calculations
if eggsAmount < eggsMin or milkAmount < milkMin or flourAmount < flourMin then
    print("")
    print("Not enough ingredients, unfortunately!")
    print("Thank you for using this program.")
else
    print("")
    flourAmount = flourAmount // flourMin
    if flourAmount == 1 then
        print("You have " .. flourAmount .. " usable portion of flour.")
    else
        print("You have " .. flourAmount .. " usable portions of flour.")
    end

    milkAmount = milkAmount // milkMin
    if milkAmount == 1 then
        print("You have " .. milkAmount .. " usable portion of milk.")
    else
        print("You have " .. milkAmount .. " usable portions of milk.")
    end

    local ingredients = {eggsAmount, milkAmount, flourAmount}
    local smallestIngredient = ingredients[1]
        for i = 2, #ingredients do
            if ingredients[i] < smallestIngredient then
                smallestIngredient = ingredients[i]
            end
        end


    print("") --each portion = 2 pancakes
    print("You're able to make " .. smallestIngredient * 2 .. " pancakes.")
    print("")
    if eggsAmount == 1 then
        print("You will need " .. smallestIngredient * eggsMin .. " egg.")
    else
        print("You will need " .. smallestIngredient * eggsMin .. " eggs.")
    end
    print("You will need " .. smallestIngredient * flourMin .. " grams of flour.")
    print("You will need " .. smallestIngredient * milkMin .. " milliletres of milk.")
    print("")
    print("Don't forget to add a pinch of salt and baking soda!")
    print("Thank you for using this program.")
end