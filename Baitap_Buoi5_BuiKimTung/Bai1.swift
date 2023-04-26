//
//  Bai1.swift
//  Baitap_Buoi5_BuiKimTung
//
//  Created by Bui Kim Tung on 25/04/2023.
//

import Foundation

func Bai1(){
    var manager = StudentManager()

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
