@main
struct SwiftPlayground {
    static func main() {
// sets dayNames to the names of the days
        let days: [String] = ["Monday","Tuesday","Wednsday","Thursday","Friday","Saturday","Sunday"]
        //declares variables
        var dailyHours: [Int] = [0,0,0,0,0,0,0]
        var done: Bool = false
        var hoursAllowed: Int
        var response: String = ""
        var intResponse: Int = -1
        var correct: Bool = true
        ///  ensures code repeats until the user is done  
        while done == false{
            //prompts the user
            print("how many hours of screen time are you allowed to have this week")
            //takes user input
            hoursAllowed = Int(readLine()!) ?? -1
            //checks user input for accuracy
            if 1 > hoursAllowed || 5<hoursAllowed{print("please type an integer between 1 and 5")}
            else{
                ///asks for and verifies screen time usage per day
                (0...6).forEach{ day in correct = false
//propts the user with a day specific quote
                    print("how much screentime did you have on",days[day])
//takes user input                    
                    while correct == false {response = readLine() ?? "" 
//makes user input be a number
                        intResponse = Int(response) ?? -1
//verifies user responese
                        if intResponse < 0 || intResponse > 24{print("please type an integer between 0 and  24")}
                        //lets user go on to the next day
                            else {dailyHours[day] = intResponse 
                        correct = true }}
                        //tells user how much over they were on each day (can be negative)
                    (0...6).forEach{priorDay in print("you were",dailyHours[priorDay]-hoursAllowed,"hours over the limit on", days[priorDay])}}
                    //starts next loop
                    correct = false
                    //lets user exit main loop
                        while !correct{
                            //propts the user
                        print("do you wish to be done \n1 yes \n2 no ")
                        //takes users response
                        response = readLine() ?? ""
                        //evaluates user response to see if they should be let out
                        if response == "1"{correct = true
                            done = true}
                            //reapeat larger loop
                        else if response == "2"{correct = true}
                        //propts user to answer correctly
                    else{print("please answer with \n1 for yes or \n2 for no")}}
            }
        }
    }
}    