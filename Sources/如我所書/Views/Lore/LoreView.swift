import SwiftUI

struct LoreView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: "0D0B1A").ignoresSafeArea()
                ScrollView {
                    LazyVStack(spacing: 12) {
                        ForEach(versionList) { entry in
                            NavigationLink(destination: PVPlayerView(entry: entry)) {
                                VersionCardView(entry: entry)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 16)
                }
            }
            .navigationTitle("史詩典籍")
            .navigationBarTitleDisplayMode(.large)
            .toolbarBackground(Color(hex: "0D0B1A"), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
    }
}

private struct VersionCardView: View {
    let entry: VersionEntry

    private var thumbnailURL: URL {
        URL(string: "https://img.youtube.com/vi/\(entry.youtubeID)/hqdefault.jpg")!
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            thumbnail
            infoRow
        }
        .background(
            RoundedRectangle(cornerRadius: 14)
                .fill(Color(hex: "1A1628"))
                .overlay(
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color(hex: "C9A265").opacity(0.18), lineWidth: 1)
                )
        )
        .clipShape(RoundedRectangle(cornerRadius: 14))
    }

    private var thumbnail: some View {
        AsyncImage(url: thumbnailURL) { phase in
            switch phase {
            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()
            case .failure, .empty:
                Color(hex: "1A1628")
            @unknown default:
                Color(hex: "1A1628")
            }
        }
        .frame(maxWidth: .infinity)
        .aspectRatio(16 / 9, contentMode: .fit)
        .overlay(playOverlay)
        .overlay(versionBadge, alignment: .topLeading)
    }

    private var playOverlay: some View {
        Image(systemName: "play.circle.fill")
            .font(.system(size: 48))
            .foregroundStyle(.white.opacity(0.85), Color(hex: "C9A265"))
            .shadow(radius: 6)
    }

    private var versionBadge: some View {
        Text("v\(entry.version)")
            .font(.system(size: 12, weight: .bold, design: .monospaced))
            .foregroundColor(Color(hex: "0D0B1A"))
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(Color(hex: "C9A265"))
            .clipShape(RoundedRectangle(cornerRadius: 6))
            .padding(10)
    }

    private var infoRow: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text("VERSION \(entry.version)")
                    .font(.system(size: 10, weight: .semibold))
                    .tracking(2)
                    .foregroundColor(Color(hex: "8A7A60"))
                Text(entry.name)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(Color(hex: "F5E6C0"))
            }
            Spacer()
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 12)
    }
}
