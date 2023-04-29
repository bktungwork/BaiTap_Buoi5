//
//  Bai1.swift
//  Baitap_Buoi5_BuiKimTung
//
//  Created by Bui Kim Tung on 25/04/2023.
//

import Foundation

struct Student {
    var name: String
    var id: String
    var mathScore: Double
    var physicsScore: Double
    var chemistryScore: Double
    
    var averageScore: Double {
        return (mathScore + physicsScore + chemistryScore) / 3
    }
}

struct StudentManager {
    var students: [Student] = []
    
    mutating func addStudent() {
        print("Enter student information:")
        print("Name: ")
        let name = readLine() ?? ""
        print("ID: ")
        let id = readLine() ?? ""
        print("Math score: ")
        let mathScore = Double(readLine() ?? "") ?? 0.0
        print("Physics score: ")
        let physicsScore = Double(readLine() ?? "") ?? 0.0
        print("Chemistry score: ")
        let chemistryScore = Double(readLine() ?? "") ?? 0.0
        
        let student = Student(name: name, id: id, mathScore: mathScore, physicsScore: physicsScore, chemistryScore: chemistryScore)
        students.append(student)
        print("Added student successfully!")
    }
    
    mutating func updateScore() {
        print("Enter student ID: ")
        let id = readLine() ?? ""
        
        if let index = students.firstIndex(where: {$0.id == id}) {
            print("Enter new scores for the student:")
            print("Math score: ")
            let mathScore = Double(readLine() ?? "") ?? 0.0
            print("Physics score: ")
            let physicsScore = Double(readLine() ?? "") ?? 0.0
            print("Chemistry score: ")
            let chemistryScore = Double(readLine() ?? "") ?? 0.0
            
            students[index].mathScore = mathScore
            students[index].physicsScore = physicsScore
            students[index].chemistryScore = chemistryScore
            print("Updated score successfully!")
        } else {
            print("Cannot find student with ID: \(id)")
        }
    }
    
    func sortStudents() {
        let sortedStudents = students.sorted { $0.averageScore > $1.averageScore }
        print("List of students sorted by average score:")
        for student in sortedStudents {
            print("\(student.name) (\(student.id)): Math \(student.mathScore), Physics \(student.physicsScore), Chemistry \(student.chemistryScore), Average Score \(student.averageScore)")
        }
    }
}

var manager = StudentManager()

func Bai1() {
    while true {
        print("1. Add new student")
        print("2. Update student score")
        print("3. Sort students by average score")
        print("4. Exit")
        print("Enter your choice: ")
        
        if let choice = Int(readLine() ?? "0") {
            switch choice {
            case 1:
                manager.addStudent()
            case 2:
                manager.updateScore()
            case 3:
                manager.sortStudents()
            case 4:
                exit(0)
            default:
                print("Invalid choice!")
            }
        } else {
            print("Invalid input!")
        }
    }
}

