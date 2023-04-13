import UIKit


func lonelyinteger(a: [Int]) -> Int {


    var dict = [Int: Int]() //딕셔너리

    for elem in a {
        dict.updateValue((dict[elem] ?? 0) + 1, forKey: elem)   //겹치는 키값은 2 아니면 1저장
    }
    if dict.count == 1 { return a.first! }  //딕셔너리 길이가 1일 경우 배열의 첫번째값 출력
    for (key, value) in dict {
        if value == 2 {
            dict[key] = nil //값이 2인 요소 삭제
        }
    }
    return dict.keys.max()! //값이 1인 요소중 가장 큰 요소 출력

}
print(lonelyinteger(a: [4,9,95,93,57,4,57,93,9,100]))
