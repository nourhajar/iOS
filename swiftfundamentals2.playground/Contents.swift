import UIKit

//First, create a loop (either for or while) that prints all of the values from 1-255
//Next, create a program that prints all of the values from 1-100 that are divisible by 3 or 5 but not both
//Now modify that program to print all values from 1-100, but replace the number with "Fizz" when the number is divisible by 3, "Buzz" when the number is divisible by 5, and "FizzBuzz" when the number is divisible by both!
for i in 1...255 {
    print(i)
}
for i in 1...100 {
    if i % 3 == 0 && i % 5 != 0 {
        print("Fizz")
    }
    if i % 3 != 0 && i % 5 == 0 {
        print("Buzz")
    }
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    }
}
