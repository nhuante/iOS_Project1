import UIKit

//: #3. Partial Sum

//: The following function will return the sum of the numbers in the array passed in between the positions a and b, where a and b pairs are defined in a second array passsed in
//: * Parameters: Array of Integers, Array of Integer Pairs
//: * Returns: String value containing the sums of each of the a,b pairs we followed

/*
 PseudoCode:
 func partialSums(array IntegerArray, indexPairs IntegerPairArray) -> String {
         for each a,b pair in indexPairs
            read out a
            read out b
            reset the sum variable
            
            for elements in the range a...b in array
               add to the sum variable
 
            add the sum to the string with a comma and a space after it

        return the string
     }

*/
                                        

func partialSums(arrayOfNums: [Int], pairsOfIndexes: [(Int, Int)]) -> String {
    // initialize the return string
    var returnString: String = "";
    
    // for each pair in our index array
    for pair in pairsOfIndexes {
        // set a new tuple to our current pair of indices
        let (startIndex, endIndex) = pair;
        // reset the sum variable
        var sum = 0;
        // for each element in our range of indices, add to the sum
        for index in startIndex...endIndex {
            sum += arrayOfNums[index]
        }
        // add the sum to our return string
        returnString += "\(sum), ";
    }
    
    return returnString;
}

//: test cases
print(partialSums(arrayOfNums: [3, 6, 4, 15, 30], pairsOfIndexes: [(1, 3), (0, 4)])); // 25, 58,
print(partialSums(arrayOfNums: [3, 6, 4, 15, 30], pairsOfIndexes: [(0,3)])); // 28,

