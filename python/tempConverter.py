#!/usr/bin/env python3

''' Temperature Convertor
    Converts from fahrenheit to celsius
'''

done = False # Variable to determine if we are done processing or not

while not done:                 # Repeat until the done flag gets set
    temp = int(input("Enter the temperature in degrees Farenheight (F): "))  # reads in the given input
    
    conversion_result = str((temp - 32) * 5 / 9) + 'C'
    
    # creat the variable for storage the final message
    message = ""

    # check for temperature below freezing
    if temp < 0:
      message = "Pack long underwear!"
 
    # check for it being a hot day
    if temp > 100:
      message = "Remember to hydrate!"
    
    print("The tempature is: " +  conversion_result)
    print(message)
    
    # looks for the user to enter y, 
    # otherwise the loop end and the program finishes
    done = input("Input another temperature? ").lower() != 'y'    # != is 'not equal'

print("Done!")