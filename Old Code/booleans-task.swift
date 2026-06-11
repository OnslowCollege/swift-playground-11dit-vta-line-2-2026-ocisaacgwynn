// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        print("type cat or dog then press enter")
        let (fuf) = readLine()
        let acuracy = fuf == "cat" || fuf == "dog"
        print(acuracy)
        // tells you wether or not you acuratly typed cat/dog
    }}