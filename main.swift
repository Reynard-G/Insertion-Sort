// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedStrings = ["test", "bob", "unknown", "null"]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
var arr : [String] = unsortedStrings
var pass = -1
var totalSwap = 0
var swapIndex = 0

for i in 0 ..< arr.count {
    var currSwap = 0
    pass += 1
    swapIndex = i
    while swapIndex > 0 {
        if arr[swapIndex] < arr[swapIndex - 1] {
            swapAt(array: &arr, index: &swapIndex)
            swapIndex -= 1
            totalSwap += 1
            currSwap += 1
        } else { break }
    }
    print("Pass: \(pass), Swaps: \(currSwap)/\(totalSwap), Array: \(arr)")
}

func swapAt(array: inout [String], index: inout Int) {
    let temp = array[index]
    array[index] = array[index - 1]
    array[index - 1] = temp
}
