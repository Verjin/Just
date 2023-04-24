import SwiftUI

struct UserData: View {
    @State var isSheet: Bool
    @Binding var userName: String
    @Binding var userPhone: String
    @Binding var userEmail: String
    
    @AppStorage("log_status") var logStatus: Bool = false
    var body: some View {
        Button {
            isSheet.toggle()
        } label: {
            HStack {
                VStack(alignment: .leading) {
                    Text(userName)
                        .foregroundColor(.yellow)
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text(userPhone)
                        .font(.caption)
                        .foregroundColor(.gray)
                        .fontWeight(.semibold)
                }
                Spacer()
                Menu {
                    Button("Выйти", role: .destructive) { logStatus.toggle() }
                    Button("Удалить аккаунт", role: .destructive) { }
                } label: {
                    circle(frame: 20, color: .red)
                }
            }
        }
        .sheet(isPresented: $isSheet) {
            NavigationStack {
                List {
                    TextField("Имя", text: $userName)
                    TextField("Номер", text: $userPhone)
                        .keyboardType(.numberPad)
                    
                    
                    Section("Почта") {
                        TextField("Почта", text: $userEmail)
                            .keyboardType(.emailAddress)
                    }
                }
                .toolbar {
                    // Cancel
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button { isSheet.toggle() } label: { circle(frame: 20, color: .red) }
                    }
                    
                    // Save
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button { isSheet.toggle() } label: { circle(frame: 20, color: .green) }
                    }
                }
            }
            .presentationDetents([.height(300)])
            .presentationDragIndicator(.hidden)
            .interactiveDismissDisabled()
        }
    }
}

struct UserData_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(CatalogManager())
    }
}
