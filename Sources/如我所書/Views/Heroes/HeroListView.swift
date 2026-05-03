import SwiftUI

struct HeroListView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: "0D0B1A").ignoresSafeArea()
                List(heroList) { hero in
                    NavigationLink(destination: HeroDetailView(hero: hero)) {
                        HeroRowView(hero: hero)
                    }
                    .listRowBackground(Color(hex: "0D0B1A"))
                    .listRowSeparatorTint(Color(hex: "C9A265").opacity(0.2))
                    .listRowInsets(EdgeInsets(top: 5, leading: 16, bottom: 5, trailing: 16))
                }
                .listStyle(.plain)
                .scrollContentBackground(.hidden)
            }
            .navigationTitle("黃金裔英雄殿")
            .navigationBarTitleDisplayMode(.large)
            .toolbarBackground(Color(hex: "0D0B1A"), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
    }
}
