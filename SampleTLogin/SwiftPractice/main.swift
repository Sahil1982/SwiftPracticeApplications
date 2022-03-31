import Foundation


class Shape{
    var area: Double?
    func calculatearea(valA: Double, valB: Double) {
        
    }
}

class Triangle: Shape {
    override func calculatearea(valA: Double, valB: Double) {
        area = (valA * valB) / 2
    }
        
}

class Rectangle: Shape {
    override func calculatearea(valA: Double, valB: Double) {
        area = valA * valB
    }
}

var obj1 = Triangle ()
obj1.calculatearea(valA: 10.1, valB: 10.2)
print(obj1)
