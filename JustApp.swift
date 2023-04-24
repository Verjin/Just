import SwiftUI

@main
struct JustApp: App {
    @AppStorage("log_status") var logStatus = false
    
    @StateObject var cartManager: CatalogManager = CatalogManager()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                Auth()
                    .environmentObject(cartManager)
            }
            .preferredColorScheme(.light)
        } 
    }
}

