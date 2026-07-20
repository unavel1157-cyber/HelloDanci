
import SwiftUI

struct NoFlashButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
    }
}

struct ContentView: View {
    @State private var offset: CGFloat = 0

    var body: some View {
        ZStack {
            LinearGradient(colors: [
                // .black
                // .white
                // .indigo.opacity(0.5), .mint.opacity(0.5)
                 .black, .white
                // .white, .black
            ], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()

            Button {

            } label: {
                Text("hello")
                    .font(.system(size: 80))
                    .bold()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .buttonStyle(NoFlashButtonStyle())
            .glassEffect(.clear.interactive(), in: RoundedRectangle(cornerRadius: 57, style: .continuous))
            .padding(20)
            .padding(.vertical, 100)
            .shadow(
                color: .black.opacity(0.08),
                radius: 10
            )
        }
    }
}

#Preview {
    ContentView()
}
