// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        //defines values
        var done: Bool = false
        let birdNames: [String] = ["tieke","Kākā","Takahē","Hihi","Kiwi","Pāteke","Tūī","Kererū"]
        var bugCount: [Int] = [0,0,0,0,0,0,0,0]
        var input:String = ""
        var intInput:Int = 0
        var count:String = ""
        var intCount:Int = 0 
        let bugNames: [String] = ["Giant Wētā","Tree Wētā","Cave Wētā","Putoko","Pūngāwerewere","Ngaokeoke","Waemano","Kapowai"]
        var birdCount: [Int] = [0,0,0,0,0,0,0,0]
        var first: Bool = true
        //makes sure the code dosent prematurely stop
            while !done{
            if !first{for (index, bugName) in bugNames.enumerated() {print(bugCount[index],bugName)}
        for (index, birdName) in birdNames.enumerated() {print(birdCount[index],birdName)}}
            print("did you \n1 see a bird \n2 see a bug \n3 want to quit")
            input = readLine() ?? ""
            intInput = Int(input) ?? -2 
                if intInput == 3{
                done = true
            }    
                else if intInput == 1{
                print("which type of bird did you see \n1",birdNames[0],"\n2",birdNames[1],"\n3",birdNames[2],"\n4",birdNames[3],"\n5",birdNames[4],"\n6",birdNames[5],"\n2",birdNames[7])
                input = readLine() ?? ""
                intInput = Int(input) ?? -2
                print("how many did you see")
                count = readLine() ?? ""
                intCount = Int(count) ?? 0
                birdCount[intInput-1] = intCount
                first = false
                }else if intInput == 2{
                for (index, bugName) in bugNames.enumerated() {print(index+1,bugName)}
                input = readLine() ?? ""
                intInput = Int(input) ?? -2
                print("how many did you see")
                count = readLine() ?? ""
                intCount = Int(count) ?? 0
                bugCount[intInput-1] = intCount
                first = false
            }
        }
    }
}