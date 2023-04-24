import SwiftUI

struct Auth: View {
    
    @AppStorage("log_status") var logStatus: Bool = false
    
    var body: some View {
        ZStack {   
            Button { logStatus.toggle() } label: { circle(frame: 50, color: .yellow) }
                .fullScreenCover(isPresented: $logStatus) {
                    TabBar()
                }
        }
        .preferredColorScheme(.dark)
    }
}


struct Auth_Previews: PreviewProvider {
    static var previews: some View {
        Auth()
            .environmentObject(CatalogManager())
    }
}



