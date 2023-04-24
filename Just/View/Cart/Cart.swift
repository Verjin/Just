import SwiftUI

struct Cart: View {
    @EnvironmentObject var cartManager: CatalogManager
    @State private var isPresentingConfirm : Bool = false
    
    var body: some View {
        List {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.self) { product in
                    CartItem(product: $cartManager.products[cartManager.getIndex(item: product)])
                }
                HStack {
                    Text(cartManager.calculateTotalPrice())
                        .font(.title).bold()
                        .padding(.top)
                    Text("₽")
                        .font(.title3).bold()
                    Spacer()
                    Button("🗑️") {
                        cartManager.clear()
                    }
                    .buttonStyle(.bordered)
                }
                .foregroundColor(.yellow)
            } else {
                
            }
            
        }
        .scrollIndicators(.hidden)
        .listStyle(.plain)
    }
}

struct CartList_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(CatalogManager())
    }
}
