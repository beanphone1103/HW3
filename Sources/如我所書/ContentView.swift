import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HeroListView()
                .tabItem {
                    Label("英雄神殿", systemImage: "person.3.fill")
                }

            GalleryView()
                .tabItem {
                    Label("記憶繪卷", systemImage: "photo.stack.fill")
                }
            LoreView()
                .tabItem {
                    Label("史詩典籍", systemImage: "book.fill")
                }
            ObservationHubView()
                .tabItem {
                    Label("觀測樞紐", systemImage: "globe")
                }
        }
        .tint(Color(hex: "C9A265"))
        .preferredColorScheme(.dark)
    }
}
