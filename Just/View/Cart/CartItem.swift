import SwiftUI

struct CartItem: View {
    @EnvironmentObject var cartManager: CatalogManager
    @Binding var product: Product
    
    var body: some View {
        VStack {
            HStack {
                Stepper(value: $product.quantity, in: 1...20, step: 1) {
                    HStack{
                        Text(product.image)
                            .font(.title2)
                        Text(product.name)
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.yellow)
                        Spacer()
                    }
                    HStack{
                        Text("\(product.quantity) кг.")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .frame(width: 60)
                    }
                }
                .overlay {
                    Text("\(product.price * product.quantity)₽")
                        .fontWeight(.semibold)
                        .foregroundColor(.green)
                }
            }
        }
    }
}


