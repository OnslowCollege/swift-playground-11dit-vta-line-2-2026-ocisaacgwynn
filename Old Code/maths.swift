// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        print("enter interger")//makes user enter text
        var num:Int = Int(readLine()!)! 
        print(num) 
        //repeats what you said
num = num + num
//sets num = num + num
print(num)
print("texted", num*2, "!")
    }}