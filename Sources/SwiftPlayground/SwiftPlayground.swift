// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        //declares variables and constants
        var weeklyHours: Int = -12
        var done: Bool = false
        var response: String = ""
        var intResponse: Int = -1
        var correct: Bool = true
        var finnished: Bool = false
        var wages: Int = 1000
        ///  ensures code repeats until the user is done  
        while !done{
            //prompts the user
            print("how many hours of work have you done this week")
            //takes user input
            weeklyHours = Int(readLine()!) ?? -1
            //checks user input for accuracy
            if 0 > weeklyHours || 28<weeklyHours{print("you can't work for less than no time and kids shouldnt    work more than for hours a day")}
            else{
                ///asks for and verifiescreen time usage per day
                while !finnished{
                    //propts the user with a day specific quote
                    print("how much are you paid hourly(in cents)")
                    //takes user input                    
                    while !correct{response = readLine() ?? "" 
                        //makes user input be a number
                        intResponse = Int(response) ?? -1
                        //verifies user responese
                        if intResponse < 1880 || intResponse > 2350{print("please type an integer between 1880 and  2350")}
                        //lets user go on to the next day
                        else {wages = intResponse
                    finnished = true }}
                    //starts next loop
                    correct = false
                    //readys loop in next loop
                    finnished = false
                    //lets user exit main loop
                    while !correct{
                            //propts the user
                            print("how much do you intend to spend this week(in cents)")
                            //takes users response
                            response = readLine() ?? ""
                            //evaluates user response to see if they should be let out
                            intResponse = Int(response) ?? -1
                            if intResponse < 0{print("those are wages or somthing not expenses or you forgot to use cents or did not round to the nearest cent")}
                            //reapeat larger loop
                            else{while finnished{print("you earned",weeklyHours*wages-intResponse,"cents this week")
                                print("would you like to quit \n1 yes\n2 no")
                                //takes user input                    
                                    while !correct{response = readLine() ?? "" 
                                    //makes user input be a number
                                    intResponse = Int(response) ?? -1
                                    if intResponse == 1{done = true
                                        correct = true 
                                    finnished = true}
                                    else{correct = true
                                    finnished = true}
                                }
                            }
                        }    
                    }
                }
            }
        }
    }
}