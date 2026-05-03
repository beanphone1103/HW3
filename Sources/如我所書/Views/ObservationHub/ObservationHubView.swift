import SwiftUI
import WebKit

struct ObservationHubView: View {
    private let url = URL(string: "https://honkai-star-rail.fandom.com/zh/wiki/%E7%BF%81%E6%B3%95%E7%BE%85%E6%96%AF?variant=zh-tw")!

    var body: some View {
        NavigationStack {
            WebView(url: url)
                .ignoresSafeArea(edges: .bottom)
                .navigationTitle("觀測樞紐")
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(Color(hex: "0D0B1A"), for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                .toolbarColorScheme(.dark, for: .navigationBar)
        }
    }
}

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}
