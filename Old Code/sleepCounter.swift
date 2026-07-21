// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
// sets dayNames to the names of the days
        let dayNames: [String] = ["Monday","Tuesday","Wednsday","Thursday","Friday","Saturday","Sunday"]
        // introduces the array called days
        var days: [Double] = [0,0,0,0,0,0,0]
        //introduces the variable responseDay 
        var responseDay: String
        //introduces the Integer intResponse Day
        var intResponseDay: Int
        //introduces the variable responseTime
        var responseTime: String
        //introduces the variable doubleResponseTime
        var doubleResponseTime: Double
        //introduces the Booleen expresion done
        var done:Bool = false
        repeat{ 
             //prints prompt for user
            (0...6).forEach{day in 
            print(1+day,dayNames[day],days[day],"hours")}
            print("8 I am done")
            //reads users response
            responseDay = readLine() ?? ""
            intResponseDay = Int(responseDay) ?? -1
            //ends system if you typed 8
            if intResponseDay == 8 {print("you slept for an average of",(days[0]+days[1]+days[2]+days[3]+days[4]+days[5]+days[6])/7,"hours per day")
                done = true}
            else if intResponseDay < 1 || intResponseDay > 8 {print("please type a whole number bettween 1 and 8")}
            else{
                //prompts the user
                print("how many hours did you sleep on",dayNames[intResponseDay-1])
                //reads response to hours
                responseTime = readLine() ?? ""                
                doubleResponseTime = Double(responseTime) ?? -1
                //elimanates invalid respnses
                if doubleResponseTime < 0 {print("the only way for that to be true is through illegal drugs. next question")}
                else if doubleResponseTime > 24 {print("time travel is illegal. anyways")}
                else{
                //sets day in days to users new number
                days[intResponseDay-1] = doubleResponseTime}
            }
        }while !done
    }
}