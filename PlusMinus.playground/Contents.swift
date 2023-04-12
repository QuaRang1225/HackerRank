import UIKit

func plusMinus(arr: [Int]) -> Void {
    let negative = arr.filter { $0 < 0 }
    let positive = arr.filter{$0 > 0}
    let zero = arr.filter{$0 == 0}
    print(String(format: "%.6f", Double(positive.count)/Double(arr.count)))
    print(String(format: "%.6f", Double(negative.count)/Double(arr.count)))
    print(String(format: "%.6f", Double(zero.count)/Double(arr.count)))
}
plusMinus(arr: [-1,-1,0,1,1])
