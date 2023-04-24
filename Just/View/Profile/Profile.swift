import SwiftUI

struct Profile: View {
    
    @State var isSheet: Bool = false
 
    @AppStorage("log_status") var logStatus: Bool = false
    @AppStorage("user_name") var userName: String = ""
    @AppStorage("user_phone") var userPhone: String = ""
    @AppStorage("user_email") var userEmail: String = ""
    
    var body: some View {
        NavigationStack {
            List {
                UserData(isSheet: isSheet, userName: $userName, userPhone: $userPhone, userEmail: $userEmail)
                Section("Настройки") {
                    Text("Заказы")
                    Text("Уведомления")
                    Text("Чеки")
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(CatalogManager())
    }
}
