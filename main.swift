// Add your code below:
var arr : [String] = []
var swapIndex = 0

while let line = readLine() {
    arr.append(line)
}

for i in 0 ..< arr.count {
    swapIndex = i
    while swapIndex > 0 {
        if arr[swapIndex] < arr[swapIndex - 1] {
            swapAt(array: &arr, index: &swapIndex)
            swapIndex -= 1
        } else { break }
    }
}

for line in arr {
    print(line)
}

func swapAt(array: inout [String], index: inout Int) {
    let temp = array[index]
    array[index] = array[index - 1]
    array[index - 1] = temp
}
