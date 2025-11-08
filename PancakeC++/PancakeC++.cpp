#include <iostream>

int main() {
  int eggsAmount;
  int eggsMin = 1;
  int milkAmount;
  int milkMin = 100; //milliletres
  int flourAmount;
  int flourMin = 35; //grams

  cout << "Hello, good day to you!\n";
  cout << "\n";
  cout << "How many eggs do you have?\n";
  cin >> eggsAmount;
  if (eggsAmount == 1) {
    cout << "You have " << eggsAmount << " egg.\n";
  } else {
    cout << "You have " << eggsAmount << " eggs.\n";
  }
  //eggs done

  cout << "How many milliletres of milk do you have?\n";
  cin >> milkAmount;
  if (milkAmount == 1) {
    cout << "You have " << milkAmount << " milliletre of milk.\n";
  } else {
    cout << "You have " << milkAmount << " milliletres of milk.\n";
  }
  //milk done

  cout << "How many grams of flour do you have?\n";
  cin >> flourAmount;
  if (flourAmount == 1) {
    cout << "You have " << flourAmount << " gram of flour.\n";
  } else {
    cout << "You have " << flourAmount << " grams of flour.\n";
  }
  //flour done, to the next part

  //calculations
  if (eggsAmount < eggsMin || milkAmount < milkMin || flourAmount < flourMin) {
    cout << "\n";
    cout << "Not enough ingredients, unfortunately!\n";
    cout << "Thank you for using this program.\n";
  } else {
    cout << "\n";
    flourAmount = flourAmount / flourMin;
    if (flourAmount == 1) {
      cout << "You have " << flourAmount << " usable portion of flour.\n";
    } else {
      cout << "You have " << flourAmount << " usable portions of flour.\n";
    }

    milkAmount = milkAmount / milkMin;
    if (milkAmount == 1) {
      cout << "You have " << milkAmount << " usable portion of milk.\n";
    } else {
      cout << "You have " << milkAmount << " usable portions of milk.\n";
    }

    //find the smallest number of 3 values
    int smallestIngredient = min(eggsAmount, min(milkAmount, flourAmount));
    
    cout << "\n"; //each portion = 2 pancakes
    cout << "You're able to make " << smallestIngredient * 2 << " pancakes.\n";
    cout << "\n";
    if (smallestIngredient == 1) {
      cout << "You will need " << smallestIngredient * eggsMin << " egg.\n";
    } else {
      cout << "You will need " << smallestIngredient * eggsMin << " eggs.\n";
    }
    cout << "You will need " << smallestIngredient * flourMin << " grams of flour.\n";
    cout << "You will need " << smallestIngredient * milkMin << " milliletres of milk.\n";
    cout << "\n";
    cout << "Don't forget to add a pinch of salt and baking soda!\n";
    cout << "Thank you for using this program.";
  }
  return 0;

}
