import SwiftUI

struct TabBar: View {
    
    @EnvironmentObject var cartManager: CatalogManager
    
    @AppStorage("log_status") var logStatus: Bool = false
    
    @State private var selection: String = "🛒"
    
    let tabs: [String] = ["🛒", "🧺", "⚙️"]
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selection) {
                Catalog()
                    .tag("🛒")
                Cart()
                    .tag("🧺")
                Profile()
                    .tag("⚙️")
            }
            
            HStack {
                ForEach(tabs, id: \.self) { tab in
                    TabBarItem(tab: tab, selection: $selection)
                        .frame(maxWidth: .infinity)
                }
            }
        }
        .preferredColorScheme(.dark)
    } 
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(CatalogManager())
    }
}



