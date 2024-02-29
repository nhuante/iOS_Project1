import UIKit

//: #2. Greatest Common Divisor

//: The following function determines the greatest common divisor of two numbers
//: * Parameters: Num1 and Num2 are both Integers
//: * Returns: Int value which represents what the GCD of both number parameters are

/*
 PseudoCode:
 func findGCD(num1 Int, num2 Int) {
        // find the number between both parameters that is less than the other, this is our starting point (returnValue)
        // if returnValue is greater than 0, check if it is a divisor for both parameters
            // if a divisor for both, let's return this value (the first number that divides both parameters will be our greatest common divisor
            // if not a divisor, decrement by 1 and continue the loop
     }

 
 Example:
         findGCD(3, 9)
             minimum is 3, so let's start there
            3 > 0, so we can continue
                    3 divides 3 and 9 evenly, so this must be our GCD, return 3

*/
                                        
func findGCD(_ num1: Int, _ num2: Int) -> Int{
    var returnValue: Int;
 
    // set the returnValue to the min of num1 and num2
    if (num1 < num2) {
        returnValue = num1;
    } else {
        returnValue = num2;
    }
    
    // iterate to find the greatest divisor
    while (returnValue > 0) {
        // if a divisor, this is our GCD, break out of the loop
        if ( (num1 % returnValue == 0) && (num2 % returnValue == 0)) {
            break;
        }
        // otherwise, decremeent and continue the loop
        returnValue -= 1;
        continue;
    }
    
    return returnValue
}


//: test cases
print(findGCD(2, 4)); // 2
print(findGCD(3, 9)); // 3
print(findGCD(12, 4)); // 4

