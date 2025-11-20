import Cocoa

// Create an array of strings, then write some code that prints the number of
// items in the array and also the number of unique items in the array

// create array
var strArr = ["str1", "str2", "str3", "str4", "str5", "str3"]

// print the number of array
print(
    "There are \(strArr.count) in the array and \(Set(strArr).count) unique items"
)


