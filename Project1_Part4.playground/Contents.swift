import UIKit

//: #4. Sum of Powers

//: The following function will return sum of powers in the following format: 1^n + 2^n + 3^n +...+ m^n
//: * Parameters: baseToEndAt Integer value (m), power Integer value (n)
//: * Returns: Integer value representing the sum of powers

/*
 PseudoCode:
 func sumOfPowers(lastBase: Int, power: Int) -> Integer {
        initialize an integer variable, we will add to this in the body
 
        for bases in the range of 1 to m
            calculate the current base to the power of n
            add the result to our integer variable
 
        return the integer variable
     }

*/


let sumOfPowers: (Int, Int) -> Int = { power, lastBase in
    // intialize our return value
    var returnValue: Int = 0;
    
    // for bases in the range of 1 to lastBase
    for base in 1...lastBase {
        // calculate the current base to the power of power
        var baseToPower:Int = 1;
        for i in 1...power {
            baseToPower *= base;
        }
        // add to the result variable
        returnValue += baseToPower;
    }
    
    // return our variable
    return returnValue;
}


//: test cases
print(sumOfPowers(2, 5)); // 55
print(sumOfPowers(5, 2)); // 33
print(sumOfPowers(1, 2)); // 3


