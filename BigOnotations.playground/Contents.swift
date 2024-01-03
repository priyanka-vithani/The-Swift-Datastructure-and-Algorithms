import UIKit

    //o(n) - Linear
func FindNemo(_ arr: [String]){
    
    let before = Date()
    
    for i in 0..<arr.count{
        if arr[i] == "nemo"{
            print("Found him!")
        }
    }
    
    let after = Date()
    let component = Calendar.current.dateComponents([.nanosecond], from: before, to: after)
    let miliSeconds:Double = Double(component.nanosecond!/1000000)
//    print("Finding nemo took: \(miliSeconds)")
}

var nemo = Array<String>(repeating: "", count: 1000000)
//nemo.append("nemo")
FindNemo(nemo)

// Constant time O(1)
func constantTime(_ n: Int)-> Int{
    return n * n
}

// Linear Time O(n)
func linearTime(_ A: [Int]) -> Int{
    for i in 0..<A.count{
        if A[i] == 0{
            return 0
        }
        print(i)
    }
    return 1
}
linearTime([1,2,3])

// Logarithmic time O(log n)
func logarithmicTime(_ N: Int) -> Int{
    var n = N
    var result = 0
    while n > 1{
        n /= 2
        print(n)
        result += 1
    }
    return result
}
logarithmicTime(128)

// Quadratic time O(n^2)
func Quadratic(_ n: Int) -> Int{
    var result = 0
    for i in 0..<n{
        for j in 0..<n{
            result += 1
        }
    }
    return result
}
Quadratic(16)

var arr = [1,2,3]
arr.append(4)

var set = Set<Int>()
set.count

// Most common interview questions and answers

/*
 
 Given two arrays, create a function that let's user know weather these two arrays contains any common items
 
 */

// Native brute force O(n^2)

func commonItemsBrute(_ A: [Int], _ B: [Int]) -> Bool{
    for i in 0..<A.count{
        for j in 0..<B.count{
            if A[i] == B[j]{
                return true
            }
        }
    }
    return false
}
commonItemsBrute([1,2,3], [4,5,6])
commonItemsBrute([1,2,3], [3,5,6])

// convert to hash and lookup via other index
func commonItemsInHash(_ A: [Int], _ B: [Int]) -> Bool{
    // Still looping... but not nested - O(2n) vs O(n^2)
    var hashA = [Int:Bool]() // o(n)
    for a in A{ //o(n)
        hashA[a] = true
    }
    // Now lookup in the hash to see if element of B is exist
    for b in B{
        if hashA[b] == true{
            return true
        }
    }
    return false
}

commonItemsBrute([1,2,3], [4,5,6])
commonItemsBrute([1,2,3], [3,5,6])
