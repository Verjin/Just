import SwiftUI

class CatalogManager: ObservableObject {
       
    @Published  var products: [Product] = []

    func clear(){
        products.removeAll()
    }
    
    func isAdded(product: Product) -> Bool{
        return products.contains{ p in
            p.id == product.id
        }
    }
    
    func addProduct(product: Product) {
        products.append(product)
    }
    
    func removeProduct(product: Product){
        products = products.filter{ $0.id != product.id }
    }
    
    func addOrRemove(product: Product){
        if isAdded(product: product){
            removeProduct(product: product)
        }
        else{
            addProduct(product: product)
        }
    }

    func getIndex(item: Product) -> Int {
        return products.firstIndex { item1 -> Bool in
            return item.id == item1.id
        } ?? 0
    }
    
    func calculateTotalPrice()->String{
        var price: Int = 0
        
        products.forEach { product in
            price += product.quantity * product.price
        }
        return String(price)
    }
    
}
