import UIKit

//: #1. Is my number prime?

//: The following function determines if a number is a prime numner
//: * Parameters: Num is an Integer, this the number we want to determine if is prime
//: * Returns: Boolean value of true if the number is prime or false is not prime

/*
 PseudoCode:
 func isPrime(userNum Int) {
         if userNum is 1, return false
         else {
             Outer loop: start at 2 until you get to userNum
                 Inner loop: start at 2 until you get to userNum
                     If inner loop i x outer loop i = userNum, return true
                     If i == j, return false //we have tried all possibilities
         }
         return false
     }

 
 Example:
         isPrime(8) {
             8 != 1, so does not return anything
             iterations:
 Outer loop: i = 2, inner loop: j = 2, 2x2=4!=8 increment inner loop
 Outer loop: i=2, inner loop: j=3, 2x3=6!=8 increment inner loop
 Outer loop: i=2, inner loop: j=4, 2x4=8=8 return true }

*/
                                        
func isPrime(_ num: Int) -> Bool {
    if (num == 1) { // if the number is 1, we know it is not prime
        return false;
    }
    else {  // if the number is not 1, let's check if it is prime
        for i in 2...num { // outer loop
            for j in 2...num { // inner loop
                // iterate through the loops to test every possible combination of numbers less than num. if any of their products multiply to num, it is not prime
                if (i*j == num) {
                    return false;
                }
            }
        }
    }
    // if none of the combinations returned false, then it must be true and num is prime
    return true;
}


//: test cases
print(isPrime(1)) // false
print(isPrime(10)) // false
print(isPrime(3)) // true
print(isPrime(2)) // true
print(isPrime(13)) // true
print(isPrime(11)) // true
print(isPrime(12)) // false
