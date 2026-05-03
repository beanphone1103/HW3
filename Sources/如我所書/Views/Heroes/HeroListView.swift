import SwiftUI

struct HeroListView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: "0D0B1A").ignoresSafeArea()
                ScrollView {
                    LazyVStack(spacing: 10) {
                        ForEach(heroList) { hero in
                            NavigationLink(destination: HeroDetailView(hero: hero)) {
                                HeroRowView(hero: hero)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                }
            }
            .navigationTitle("黃金裔英雄殿")
            .navigationBarTitleDisplayMode(.large)
            .toolbarBackground(Color(hex: "0D0B1A"), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
    }
}
