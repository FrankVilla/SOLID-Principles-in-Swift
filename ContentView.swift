/*Single Responsibility Principle (SRP)
The single responsibility principle states that a class should have one, and only one, reason to change. This means that a class should have a single, well-defined responsibility. In other words, a class should have only one reason to exist and all its methods should be related to that reason.*/


class User {
    var name: String
    var email: String

    init(name: String, email: String) {
        self.name = name
        self.email = email
    }
}


/*
 Open-Closed Principle (OCP)
 The open-closed principle states that a class should be open for extension, but closed for modification. This means that a class should be designed in such a way that new functionality can be added without modifying the existing code.
 */

protocol Shape {
    func area() -> Double
}

class Rectangle: Shape {
    var width: Double
    var height: Double

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    func area() -> Double {
        return width * height
    }
}

class Circle: Shape {
    var radius: Double

    init(radius: Double) {
        self.radius = radius
    }

    func area() -> Double {
        return Double.pi * radius * radius
    }
}


/*
 Liskov Substitution Principle (LSP)
 The Liskov substitution principle states that objects of a superclass should be able to be replaced with objects of a subclass without affecting the correctness of the program. This means that a subclass should be a subtype of its superclass, and should be able to replace any instance of its superclass without affecting the correctness of the program.
 */

class Car {
  func startEngine() {
    print("Engine started")
  }
}

class ElectricCar: Car {
  override func startEngine() {
    print("Electric motor started")
  }
}

let car: Car = ElectricCar()
car.startEngine()  // Output: "Electric motor started"



/*
 Interface Segregation Principle (ISP)
 The Interface Segregation Principle states that a class should not be forced to implement interfaces it doesn’t use. In other words, a class should only be required to implement the methods it needs.
 */

protocol Printable {
  func printDocument()
  func scanDocument()
  func faxDocument()
}

class Printer: Printable {
  func printDocument() {
    // Code to print document
  }
  
  func scanDocument() {
    // Not implemented
  }
  
  func faxDocument() {
    // Not implemented
  }
}

/*
 Dependency Inversion Principle (DIP)
 The Dependency Inversion Principle states that high-level modules should not depend on low-level modules, but both should depend on abstractions. In other words, a class should not depend on a specific implementation, but rather on an abstraction.

 Let’s take a look at an example where DIP is not followed:
 */


class Database {
  func save(data: String) {
    // Code to save data to database
  }
}

class Users {
  var database = Database()
  
  func save() {
    database.save(data: "user data")
  }
}
