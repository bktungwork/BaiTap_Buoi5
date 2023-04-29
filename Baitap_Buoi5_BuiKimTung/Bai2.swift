//
//  Bai2.swift
//  Baitap_Buoi5_BuiKimTung
//
//  Created by Bui Kim Tung on 26/04/2023.
//

import Foundation

class Product {
    var name: String
    var code: String
    var price: Double
    var quantity: Int
    
    init(name: String, code: String, price: Double, quantity: Int) {
        self.name = name
        self.code = code
        self.price = price
        self.quantity = quantity
    }
}

class Store {
    var products: [Product] = []
    
    func addProduct() {
        print("Enter product information:")
        print("Name: ")
        let name = readLine() ?? ""
        print("Code: ")
        let code = readLine() ?? ""
        print("Price: ")
        let price = Double(readLine() ?? "") ?? 0.0
        print("Quantity: ")
        let quantity = Int(readLine() ?? "") ?? 0
        
        let product = Product(name: name, code: code, price: price, quantity: quantity)
        products.append(product)
        print("Added product successfully!")
    }
    
    func updateProduct() {
        print("Enter product code to update: ")
        let code = readLine()?.lowercased() ?? ""
        
        if let index = products.firstIndex(where: { $0.code == code }) {
            print("Enter new product information:")
            print("Name: ")
            let name = readLine() ?? ""
            print("Price: ")
            let price = Double(readLine() ?? "") ?? 0.0
            print("Quantity: ")
            let quantity = Int(readLine() ?? "") ?? 0
            
            products[index].name = name
            products[index].price = price
            products[index].quantity = quantity

            print("Updated product successfully!")
        } else {
            print("Product not found.")
        }
    }
    
    func displayProducts() {
        if products.isEmpty {
            print("No products found.")
        } else {
            print("Product list:")
            for product in products {
                print("- Name: \(product.name), Code: \(product.code), Price: \(product.price), Quantity: \(product.quantity)")
            }
        }
    }
    
    func searchProductByName() {
        print("Enter product name to search: ")
        let name = readLine() ?? ""
        
        let matchingProducts = products.filter { $0.name.contains(name) }
        
        if matchingProducts.isEmpty {
            print("No products found.")
        } else {
            print("Matching products:")
            for product in matchingProducts {
                print("- Name: \(product.name), Code: \(product.code), Price: \(product.price), Quantity: \(product.quantity)")
            }
        }
    }
}

let store = Store()

var choice: Int = 0

func Bai2() {
    while true {
        print("Menu:")
        print("1. Add product")
        print("2. Update product")
        print("3. Display products")
        print("4. Search product by name")
        print("5. Exit")
        print("Enter your choice: ")
        
        if let choice = Int(readLine() ?? "0") {
            switch choice {
            case 1:
                store.addProduct()
            case 2:
                store.updateProduct()
            case 3:
                store.displayProducts()
            case 4:
                store.searchProductByName()
            case 5:
                exit(0)
            default:
                print("Invalid choice!")
            }
        }
    }
}

