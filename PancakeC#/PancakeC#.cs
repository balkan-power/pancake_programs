using System;
using System.Linq;

int eggsAmount;
int eggsMin = 1;
int milkAmount;
int milkMin = 100; //milliletres
int flourAmount;
int flourMin = 35; //grams

Console.WriteLine("Hello, good day to you!");
Console.WriteLine("");
Console.WriteLine("How many eggs do you have?");
eggsAmount = Convert.ToInt32(Console.ReadLine());
if (eggsAmount == 1)
{
  Console.WriteLine("You have " + eggsAmount + " egg.");
}
else
{
  Console.WriteLine("You have " + eggsAmount + " eggs.");
}
//eggs done

Console.WriteLine("How many milliletres of milk do you have?");
milkAmount = Convert.ToInt32(Console.ReadLine());
if (milkAmount == 1)
{
  Console.WriteLine("You have " + milkAmount + " milliletre of milk.");
}
else
{
  Console.WriteLine("You have " + milkAmount + " milliletres of milk.");
}
//milk done

Console.WriteLine("How many grams flour do you have?");
flourAmount = Convert.ToInt32(Console.ReadLine());
if (flourAmount == 1)
{
  Console.WriteLine("You have " + flourAmount + " gram of flour.");
}
else
{
  Console.WriteLine("You have " + flourAmount + " grams of flour.");
}
//flour done, to the next part

//calculations
if (eggsAmount < eggsMin || milkAmount < milkMin || flourAmount < flourMin)
{
  Console.WriteLine("");
  Console.WriteLine("Not enough ingredients, unfortunately!");
  Console.WriteLine("Thank you for using this program.");
}
else
{
  Console.WriteLine("");
  flourAmount = flourAmount / flourMin;
  if (flourAmount == 1)
  {
    Console.WriteLine("You have " + flourAmount + " usable portion of flour.");
  }
  else
  {
    Console.WriteLine("You have " + flourAmount + " usable portions of flour.");
  }

  milkAmount = milkAmount / milkMin;
  if (milkAmount == 1)
  {
    Console.WriteLine("You have " + milkAmount + " usable portion of milk.");
  }
  else
  {
    Console.WriteLine("You have " + milkAmount + " usable portions of milk.");
  }

  //find the smallest of the 3 values
  int[] ingredients = {eggsAmount, milkAmount, flourAmount};
  int smallestIngredient = ingredients.Min();

  Console.WriteLine(""); //each portion = 2 pancakes
  Console.WriteLine("You're able to make " + smallestIngredient * 2 + " pancakes.");
  Console.WriteLine("");
  if (smallestIngredient == 1)
  {
    Console.WriteLine("You will need " + smallestIngredient * eggsMin + " egg.");
  }
  else
  {
    Console.WriteLine("You will need " + smallestIngredient * eggsMin + " eggs.");
  }
  Console.WriteLine("You will need " + smallestIngredient * flourMin + " grams of flour.");
  Console.WriteLine("You will need " + smallestIngredient * milkMin + " milliletres of milk.");
  Console.WriteLine("");
  Console.WriteLine("Don't forget to add a pinch of salt and baking soda!");
  Console.WriteLine("Thank you for using this program.");
}