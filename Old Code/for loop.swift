// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        let foofs: [String] = ["dog", "cat", "bird"]
        //foofs is supposed to be multiple strings that can be accessed invidualy
        foofs.forEach{foof in
        print("type",foof)
        if readLine() == foof{
            print("yes")
            } 
        else {print("no")
            }
        }
    }
}