//: Basic Operators(基础运算符）


import UIKit

//: An operator is a sepecial symbol or phrase that you use to check, change, or combine values.
//: Swift supports most standard C operators and imporves serveral capabilities to eliminate(消除） common coding errors.
//: The assignment operator (=) doesn't return a value, to prevent it from being mistakenly used when the equal to operator(==) is intended.
var a: Int
var b: Int
var c: Int

// Swift 中的赋值运算符没有返回值，所以连续赋值会报错
//a = b = 1
a = 1
// 同样因为没有返回值，在if后面使用赋值运算符也会报错
//if a = 1 {
//    print("Hello world")
//}

// Swift 的基础运算符会进行越界检查，即如果操作数的长度超过了当前变量存储的长度会报出overflow的错误（编译期间）
b = 9999999999
a = 9999999999
//c = a * b
c = 9999999999 &* 99999999999

a = -10
b = -4
c = a % b

//: ## Terminology[,tɝmə'nɑlədʒi],术语
//: - Unary operators operate on a single target. Unary prefix(前缀) opertors appear immediately before their target, and unary postfix operators appears immediately after their target.
//: - Binary operators operate on two targets and are infix(中缀).
//: - Ternary operators operate on three targets —— the ternary conditional operator
//: The values that operators affect are operands. In the expression 1 + 2, the + symbol is a binary operator and its two operands are the values 1 and 2.

//: ## Assignment Operator
let b1 = 10
var a1 = 5
a1 = b1
//: If the right side of the assignment is a tuple with multiple values, its elements can be decomposed into multiple constants or variables at once:
let (x,y) = (1,2)
//x is equal to 1, and y is equal to 2
//: Unlike the assignment operator in C and Objective-C, the assignment operator in Swift does not itself reurn a value. The following statement is not valid:
/*
if x = y {
    //This is not valid, because x = y does not return a value.
}
*/
//: This feature prevents the assignment operator(=) from being used by accident when the equal to operator(==) is actually intended. By making if x = y invalid, Swift helps you to avoid these kinds of errors in your code.
//: Arithmetic Operators
//: Swift supports the four standard arithmetic operators for all number types:
//: - Addition(+)
//: - Substraction(-)
//: Multiplication(*)
//: Division(/)

1 + 2
5 - 3
2 * 3
10.0 / 2.5

//: Unlike the arithmetic operators in C and Objective-C, the Swift arithmetic operators don't allow values to overflow by default. You can opt in to value overflow behavior by using Swift's overflow operators(such as a &+ b).
//: The addition operator is also supported for String concatenation
"hello" + "world"
//: ### Remainder Operator
//: The remainder operator( a % b ) works out how many multiples of b will fit inside a and returns the value that is left over(known as the remainder).
//: Note: The remainder operator(%) is also known as a modulo operator in other language. However, its behavior in Swift for  negative numbers means that, strictly speaking, it's remainder rather than a modulo operation.
9 % 4
-9 % 4
-9 % -4
9 % -4
// a = (b * some multiplier) + remainder
// The sign of b is ignored for negative value of b. This means that a % b and a % -b always give the same answer.
//: ### Unary Minus Operator
//: The sign of a numeric value can be toggled using a prefixed -, kwnown as the unary minus operator.
let three = 3
let minusThree = -three
let plusThree = -minusThree
//: The unary minus operator (-) is prepended directly befor the value it operates on, without any white space.

//: ##Unary Plus Operator
//: The unary plus operator simply returns the value it operates on,without any chagne:
let minusSix = -6
let alsoMinusSix = +minusSix
//: Although the unary plus operator doesn't actually do anything, you can use it to provide symmetry in code for postive numbers when also using the unary minus operator for negative numbers.
//: ## Compound Assignment Operators
//: Like C, Swift provides compound assignment operators that combine assignment(=) with another operation.
var a2 = 1
a2 += 2
//a2 is now equal to 3
//: The expression a += 2 is shorthand for a = a + 2. Effectively, the addtion and the assignment are combined into one operator that performs both tasks at the same time.
//: Note: The compound assigment operators don't return a value. Fox example, you can't write let b = a += 2.
//: ## Comparison Operators
//: Swift supports all standard C comparision operators:
//: - Equal to (a == b)
//: - Not equal to (a != b)
//: - Greater than (a > b)
//: - Less than (a < b)
//: - Greater than or equal to (a >=b)
//: - Less than or equal to (a <=b )
//: Note: Swift also provides two identity operators( === and !== ), which you use to test whether two object references both refer to the same object instance.
//: Each of the comparsion operators returns a Bool value to indicate wiht whether or not the statement is true:
1 == 1
2 != 2
2 > 1
1 < 2
2 >= 1
2 <= 1
//: Comparison operators are often used in conditional statements, such as the if statement:
let name = "world"
if name == "world" {
    print("Hello, world! ")
}else {
    print("I'm sorry \(name), but I don't recognized you")
}
//: You can compare two tuple if they have the same type and the same number of values.
(1, "zebra") < (2, "apple")
(3, "apples") < (3, "bird")
(4, "dog") == (4, "dog")
//: In the example above, you can see the left-to-right comparison behavior on the first line. Because 1 is less than 2, (1, "zebra") is considered less than (2,"apple"), regardless of any other value in the tuple. It doesn't matter that "zebar" isn't less than "apple", because the comparison is already determined by the tuples' first elements. However, when the tuples' first elements are the same, their second elements are compared - this is what happens one the secode and third line.
//: ## Ternary Conditional Operator
//: The ternary conditional operator is a special operator with three parts, which takes the form *question ? answer1 : answer2*. It's a shortcut for evaluating one of two expressions based on whether question is true or false. If question is true, it evaluates answer1 and return its value; otherwise, ite evaluates answer2 and returns its value.
/*
if question {
    answer1
}else {
    answer2
}
*/

let contentHeight = 40
let hasHeader = true
var  rowHeight = contentHeight + (hasHeader ? 50 : 20)

// The preceding example is shorhand for the code below:
if hasHeader {
    rowHeight = contentHeight + 50
}else {
    rowHeight = contentHeight + 20
}
//: Nil-Coalescing Operator

