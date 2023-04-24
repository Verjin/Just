import SwiftUI

struct TabBarItem: View {
    @State var tab: String
    @Binding var selection: String
    
    @EnvironmentObject var cartManager: CatalogManager
    var body: some View {
            Button {
                withAnimation { selection = tab }
            } label: {
                Text(tab)
                    .font(selection == tab ? .largeTitle : .title)
                    .opacity(selection == tab ? 1 : 0.5)
            }
    }
}

struct TabBarItem_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(CatalogManager())
    }
}
