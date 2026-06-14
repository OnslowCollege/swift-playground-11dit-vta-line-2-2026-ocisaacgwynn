// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
            ///prints a propt ut
    
    static func main() {
        var done:Bool = false
        repeat{ 
            print("Did you see a \n1. bird or \n2. an insect or \n3. Are you done?")
            var responseAnimalType = readLine()
            if responseAnimalType == "1" {
                // bird()
            }
            else if responseAnimalType  == "2" {
                // insect()
            }
            else if responseAnimalType == "3" {done = true}
            else {print( "your options are 1, 2 ,3")}
        }while !done
        
    }
}