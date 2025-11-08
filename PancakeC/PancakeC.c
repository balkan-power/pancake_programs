#include <stdio.h>

int main() {
    int eggsAmount;
    int eggsMin = 1;
    int milkAmount;
    int milkMin = 100; //millimetres
    int flourAmount;
    int flourMin = 35; //grams

    printf("Hello, good day to you!\n");
    printf("\n");
    printf("How many eggs do you have?\n");
    scanf("%d", &eggsAmount);
    if (eggsAmount == 1) {
        printf("You have %d egg.\n", eggsAmount);
    } else {
        printf("You have %d eggs.\n", eggsAmount);
    }
    //eggs done

    printf("How many milliletres of milk do you have?\n");
    scanf("%d", &milkAmount);
    if (milkAmount == 1) {
        printf("You have %d milliletre of milk.\n", milkAmount);
    } else {
        printf("You have %d milliletres of milk.\n", milkAmount);
    }
    //milk done

    printf("How many grams flour do you have?\n");
    scanf("%d", &flourAmount);
    if (flourAmount == 1) {
        printf("You have %d gram of flour.\n", flourAmount);
    } else {
        printf("You have %d grams of flour.\n", flourAmount);
    }
    //flour done, to the next part

    //calculations
    if (eggsAmount < eggsMin || milkAmount < milkMin || eggsAmount < eggsMin) {
        printf("\n");
        printf("Not enough ingredients, unfortunately!\n");
        printf("Thank you for using this program.\n");
    } else {
        printf("\n");
        flourAmount = flourAmount / flourMin;
        if (flourAmount == 1) {
            printf("You have %d usable portion of flour.\n", flourAmount);
        } else {
            printf("You have %d usable portions of flour.\n", flourAmount);
        }

        milkAmount = milkAmount / milkMin;
        if (milkAmount == 1) {
            printf("You have %d usable portion of milk.\n", milkAmount);
        } else {
            printf("You have %d usable portions of milk.\n", milkAmount);
        }

        //find the smallest number of 3 values
        #define min(a, b) ((a) < (b) ? (a) : (b))
        int smallestIngredient = min(flourAmount, min(eggsAmount, milkAmount));

        printf("\n"); //each portion = 2 pancakes
        printf("You're able to make %d pancakes.\n", smallestIngredient * 2);
        printf("\n");
        if (smallestIngredient * eggsMin == 1) {
            printf("You will need %d egg.\n", smallestIngredient * eggsMin);
        } else {
                printf("You will need %d eggs.\n", smallestIngredient * eggsMin);
        }
        printf("You will need %d grams of flour.\n", smallestIngredient * flourMin);
        printf("You will need %d milliletres of milk.\n", smallestIngredient * milkMin);
        printf("\n");
        printf("Don't forget to add a pinch of salt and baking soda!\n");
        printf("Thank you for using this program.");
    }
}
