import UIKit

struct Point {
    
    var x: Double
    var y: Double
    
    init (x: Double, y: Double){
        self.x = x
        self.y = y
    }
    
}

struct Line {
    
    var start: Point
    var end: Point
    
    init (start: Point, end: Point){
        self.start = start
        self.end = end
    }
    
    func length() -> Double {
        return sqrt(pow(abs(self.start.x - self.end.x), 2) + pow(abs(self.start.y - self.end.y), 2))
    }
    
}

struct Triangle {
    
    var points: [Point]
    
    init (points: [Point]){
        self.points = [Point]()
    }
    
}
