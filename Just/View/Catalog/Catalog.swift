import SwiftUI

struct Catalog: View {
    
    @EnvironmentObject var cartManager: CatalogManager
    
    @AppStorage("log_status") var logStatus: Bool = false

    private var columns: [GridItem] = [
        GridItem(.fixed(80)),
        GridItem(.fixed(80)),
        GridItem(.fixed(80)),
        GridItem(.fixed(80))
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(fruits, id: \.id) { fruit in
                    Button {
                        cartManager.addOrRemove(product: fruit)
                    } label: {
                            Text(fruit.image)
                            .font(.system(size: 40))
                            .frame(width: 65, height: 65)
                            .background(Circle().stroke(cartManager.isAdded(product: fruit) ? .green : .black, lineWidth: 2))
                    }
                }
                ForEach(vegetables, id: \.id) { vegetable in
                    Button {
                        cartManager.addOrRemove(product: vegetable)
                    } label: {
                            Text(vegetable.image)
                            .font(.system(size: 40))
                            .frame(width: 65, height: 65)
                            .background(Circle().stroke(cartManager.isAdded(product: vegetable) ? .green : .black, lineWidth: 2))
                                
                    }
                }
                
            }
            
        }
    }
}

struct Catalog_Previews: PreviewProvider {
    static var previews: some View {
        Catalog()
            .environmentObject(CatalogManager())
    }
}






