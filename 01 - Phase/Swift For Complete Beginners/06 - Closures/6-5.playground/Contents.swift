import Cocoa


let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

// sorted, filter, map - chain together, use multple(of:)

// Filter out and numbers that are even
// Sort the array in ascending order
// Map them to strings in the format "7 is a lucky number"
// print the resulting array, one item per line


//var output = luckyNumbers.filter {
//    $0 % 2 == 0
//}.sorted(by: <).map { "\($0) is a lucky number" }
//for item in output {
//    print(item)
//}

luckyNumbers
    .filter {
        !$0.isMultiple(of: 2) // keep only odd number
    }
    .sorted() // sort asc
    .map {
        "\($0) is a lucky number"
    }
    .forEach { print($0) }



