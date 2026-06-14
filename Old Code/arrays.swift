// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        let foofs: [String] = ["dog", "cat", "bird"]
        //foofs is supposed to be multiple strings that can be accessed invidualy
        print("type: \(foofs[0]), \(foofs[1]), or \(foofs[2])")
        let readLine = readLine()
        if(readLine == foofs[0]){print("puppy")}
        else if(readLine == foofs[1]){print("kitten")}
        else if(readLine == foofs[2]){print("birb")}
        else {print("why will you not type: \(foofs[0]), \(foofs[1]), or \(foofs[2])")}
    }
}