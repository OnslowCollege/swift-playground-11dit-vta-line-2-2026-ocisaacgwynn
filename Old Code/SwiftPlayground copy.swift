// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        //this is an input when still a string
        var responseTime: String = ""
        //responseTime as an Int or -1 if input failed
        var intResponseTime: Int = 0
        //the array where answers are stored
        var dayHours: [Int] = [0,0,0,0,0,0,0]
        /*loop that asks for hours and inputs them into array*/
        //loops 7 times and increments the value day 0-6
        (0...6).forEach{day in 
        //propts the user kinda shoddily
            print("date",day+1)
            //stores user input if the user input if invalid stores string without number
            responseTime = readLine() ?? "" 
            //changes responseTime to an integer or -1
            intResponseTime = Int(responseTime) ?? -1
            //stores int in long term memory so it can be retreved
            dayHours[day] = intResponseTime}
            //prints long term memory
        (0...6).forEach{day in
        print(dayHours[day])}
    }
}
