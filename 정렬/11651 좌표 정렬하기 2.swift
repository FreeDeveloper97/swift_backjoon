//
//  11651 좌표 정렬하기 2.swift
//  swift_bj
//
//  Created by Kang Minsang on 2021/03/30.
//

func main7() {
    var points = [(Int, Int)]()
    let n = Int(readLine()!)!
    for _ in 0..<n {
        let datas = readLine()!.split(separator: " ").map { Int(String($0))! }
        let x = datas[0], y = datas[1]
        points.append((x, y))
    }
    points.sort(by: { $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1})
    var result = ""
    for point in points {
        result += "\(point.0) \(point.1)\n"
    }
    print(result)
}
