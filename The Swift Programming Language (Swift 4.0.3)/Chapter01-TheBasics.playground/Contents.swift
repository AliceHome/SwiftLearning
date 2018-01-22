//: Playground - The Basics

import UIKit
//: 1. plathform
//: 2. data type
//: 3. variables and contants
//: 4.
//: ## 1. Constants and Variables
//: The value of a constant can't be changed once it's set, whereas a variable can be set to a different value in the future.
//: ### Declaring Constants and Variables
//: Constants and variables must be declared before they'are used.
//: You declare constants with the let keyword and variables with the var keyword.
//: For example, Declare a new constant called maximumNumberOfLoginAttempts, and give it a value of 10. Then, declare a new variable called currentLoginAttempt, and give it an initial value of 0.
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0
//: We can declare multiple constants or multiple variables on a single line, separated by commas:
var x = 0.0, y = 1.2, z = 2.3
let a = 10, b = 21.0 , c = 12
//: *Note: If a stored value in your code won't change, always declare it as a constant with the let keyword. Use variables only for storing values that need to be able to change.*
//: ### Type Annotations
//: You can provide a type annotation when you declare a constant or variable, to be clear about the kind of values the constant or variable can store. Write a type annotation by placing a colon after the constant or variable name, followed by sapce, followed by the name of the type to use.
//:For example, declare a variable called welcomeMessage that if of type String. The phrase "of type String" means "can store any String value".
var welcomeMessage: String
welcomeMessage = "Welcome to the Basics"
//: You can define multiple related variables of the same type on a single line, separated by commas, with a single type annotation after the final variable name.
var red, green, blue: Double
//: *Note: It's rare that you need to write type annotations in practice. If you provide an initial value for a constant or variable at the point that it's defined, Swift can almost always infer the type to be used for that constant or variable, as described in Type Safety and Type Inference. In the welcomeMessage example above, no initail value is provide, and so the type of the welcomeMessage variable is specified with a type annotation rather than being inferred from an initial value*
//: ### Naming Constants and Variables
//: Constant and variable names can contain almost any character, including Unicode characters
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐂 = "dogcow"
//: Once you've declared a constant or variable of a certain type, you can't declare it again with the same name, or change it to store values of a different type. Nor can you change a constant into a variable or a variable into a constant:
//: *NOTE: If you need to give a constant or variable the same name as a reserved Swift keyword, surround the keyword with backticks(`) when using it as a name. However, avoid using keywords as names unless you have absolutely no choice.*
var `var` = 12
let  `let` = 19
//: You can change the value of an existing variable to another value of a compatible type.
var friendlyWelcome  = "hello"
friendlyWelcome = "Bonjour!"
//: Unlike a variable, the value of a constant can't be changed after it's set. Attempting to do so is reported as an error when you code is compiled:
let languageName = "Swift"
//languageName = "Swift++"//compiled: change 'let' to 'var' to make it mutable

//: ### Printing Constants and Variables
print(friendlyWelcome)
print(friendlyWelcome," ", terminator: "")
print(languageName)
print("The current value of friendlyWelcome is \(friendlyWelcome)")
//: ## 2. Comments
//: Use comments to include nonexecutable text in your code, as a note or reminder to yourself. Comments are ignored by the Swift compiler when your code is compiled.
//: Comments in Swift are very similar to comments in C. Single-line comments begin with two forward-slashes(//):
//This is comment.
//: Multiline comments start with a foward-slash followed by an asterisk(/*) and end with an asterisk followed by a forward-slash(*/):
/* This is also a comment
 but is written over multiple lines. */
//: Unlike multiline comments in C, multiline comments in Swift can be nested（嵌套） inside other multiline comments. Your write nested comments by starting a multiline comment block and then starting a seconde multiline comment within the first block.The second block is then closed, followed by the first block:
/* This is the start of the first multiline comment.
 /* This is the seconde, nested multiline comment8*/
 This is the end of the first multiline comment. */
//: ## 3. Semicolons
//: Unlike many other languages, Swift doesn't require  you to write a semicolon after each statement in your code , although you can do so if you wish . However , semicolon are required if you want to write multiple separate statementstatement on a single line:
let cat = "cat"; print("cat");
// print cat
//: ## 4. Integers
//: Integer are whole number with no fractional component ,such as 42 and -23. Integers are either signed (positive ,zero ,or negative) or unsigned (positive or zero).
//: ### Integer Bounds
let minValue = UInt8.min//minValue is equal to 0, and is not type UInt8
let maxValue = UInt8.max//masValue is equal to 255, and is of type UInt8

//: ### Int
//: In most case ,you don't need to pick a specific size of integers to use in your code. Swift provide an additional inter type ,Int, which has the same size as the current platform's native word size.
//: - On a 32-bit platform , Int is the same size as Int32
//: - On a 64-bit platform , Int is the same size as Int64

//: ### UInt
//: Swift also provides an unsigned integer type, *UInt*, which has the same size as the current platform's native word size.

//: Note: Use *UInt* only when you specifically need an unsigned integer type with the same size as the platform's native word size. If this isn't the case, *Int* is preferred, even when the values to be stored are known to be nonnegative. A consistent use of *Int* for integer values aids code interoperability, avoids the need to covert between different number types, and matches integer type inference, as described in Type Safety and Type Inference .

//: ## 5. Floating-Point Numbers
//: Floating-point number are numbers with a fractional component, such as 3.14159, 0.1 and -273.15.
//: Floating-point types can represent a much wide range of values than integer types, and can store numbers that are much larger or smaller than can be stored in an Int. Swift provides two signed floating-point number types:
//: - *Double* represents a 64-bit floating-point number
//: - *Float* represent a 34-bit floating-point number
//: NOTE: *Double* has a precision of at least 15 decimal digits, whereas the precision of *Float* can be as little as 6 decimal digits. The appropriate float-point tye to use depends on the nature and range of values you need to work with in you code. In situation where either type would be appropriate, *Double* is preferred.
//: ## 6. Type Safety and Type Inference
//: Swift is a tyep-safe language. A type safe language encourage you to be clear about the types of values your code can work with. If part of your code requires a String, you can't pass it an *Int* by mistake.
//: Because Swift is type safe, it performs type checks when compiling your code and flags any mismatched type as errors. This enables you to catch and fix errors as early as possible in the development process.
//: Type-checking helps you avoid errors when you're working with different types of values. However, this doesn't mean that you have to specify the type of every constant and variable thant you declare. If you don't specify the type of value you need, Swift uses type inference to work out the appropriate type. Type inference enables a compiler to deduce the type of a particular expression automatically when it compiles your code, simply by examining the value you provide.
//: Because of type-inference, Swift requires far fewer type declarations than languages such as C or Objective-C. Constant and variables are still explicitly typed, but much of the work of specifying their type is done for you.
//: Type inference is particular useful when you declare a constant or variable with an initial value. This is often done by assigning a literal value(or literal)to the constant or variable at the point that you declare it.(A literal value is a value that appears directly in your source code, such as 42 and  3.14159 in the example  blow.)
//For example, if you assign a literal value of 42 to a new constant without saying what type it is, Swift infers that you want the constant to be an *Int*, because you have initialized it with a number that looks like an integer:
let meaningOfLife = 42
//meaningOfLife is infered to be of type Int



//: ## 7. Numeric Literals

//: ## 8. Numeric Type Conversion

//: ### Integer Conversion

//: ### Integer and Floating-Point Conversion

//: ## 9. Type Aliases
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min

//: ## 10. Booleans
//: Swift has a bsic Boolean type, called Bool. Boolean values are referred to as logical, because they can only ever be true or false. Swift provides two Boolean constant values, true and false:
let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips! ")
}else {
    print("Eww, turnips are horrible.")
}

//: ## 11. Tuples
let http404Error = (404, "Not Found")
//http404Error is of type(Int,String), and equals (404,"Not Found")
let (statusCode, statusMsg) = http404Error
print("--- the status code is \(statusCode)")
print("--- the status message is \(statusMsg)")

let (justTheStatusCode, _) = http404Error
print("the just the status code is \(justTheStatusCode)")

print("by index 0 to access the status code is \(http404Error.0)")
print("by index 1 to access the status message is \(http404Error.1)")


let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
print("The status description is \(http200Status.description)")

//: **Note: Tuples are useful for temporary groups of related values. They're not suited to the creation of complex data structures. If your data structur is likely to persist beyond a temporary scope, model it as a class or structure, rather than as a tuple.
//: ## 12. Optionals

//: ## 13. Error Handling

//: ## 14. Assertions and Preconditions
//: Assertions and preconditions are checks that happens at runtime. You use them to make sure an essential condition is satified before executing any further code. If the Boolean condition in the assertion or precondition evaluates to true, code execution as usual. If the condition evaluates to false, the current state of the program is invalid; code execution ends, and your app is terminated.
//: You use assertions and preconditions to express the assumptions you make and the expectation you have while coding, so you can include them as part of your code. Assertion help you find mistake and incorrect assumptions during development, and preconditions help you detect issue in production.
//: In addition to veryfying your expectations at runtime, assertions and preconditions  also become a useful form of documentation within the code. Unlike the error conditions discussed in Error Handling above, assertions and preconditions aren't used for recoverable or exepected errors. Because a failed assertion or precondition indicates an invalid program state, there's no way to catch a failed assertion.
//: Using assertions and preconditions isn't a substitute for designing your code in such a way that invalid conditions are unlikely arise.
//: The difference between assertions and preconditions is in when they are checked.
//: ### Debugging with Assertions
//let age = -3
let age = 12
//assert(age >= 0, "A person's age can't be less than zero.")

if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
}else if age > 0 {
    print("You can ride the ferris wheel.")
}else {
    assertionFailure("A person's age can't be less than zero.")
}
//: ### Enforcing Preconditions
let index = 1
precondition(index > 0, "Index must be greater than zero.")

//: Use a precondition
