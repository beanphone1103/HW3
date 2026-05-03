import SwiftUI
import WebKit

struct PVPlayerView: View {
    let entry: VersionEntry

    var body: some View {
        ZStack {
            Color(hex: "0D0B1A").ignoresSafeArea()
            WebView(url: entry.youtubeURL)
                .ignoresSafeArea(edges: .bottom)
        }
        .navigationTitle("v\(entry.version) \(entry.name)")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(Color(hex: "0D0B1A"), for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarColorScheme(.dark, for: .navigationBar)
    }
}
