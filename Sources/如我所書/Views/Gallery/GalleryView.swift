import SwiftUI

struct GalleryView: View {
    @State private var selectedCategory: RegionCategory = .dawn

    private var filtered: [Region] {
        regionList.filter { $0.category == selectedCategory }
    }

    var body: some View {
        NavigationStack {
            ZStack {
                Color(hex: "0D0B1A").ignoresSafeArea()
                VStack(spacing: 0) {
                    categoryPicker
                    regionScroll
                }
            }
            .navigationTitle("記憶繪卷")
            .navigationBarTitleDisplayMode(.large)
            .toolbarBackground(Color(hex: "0D0B1A"), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
    }

    private var categoryPicker: some View {
        HStack(spacing: 0) {
            ForEach(RegionCategory.allCases) { cat in
                Button {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        selectedCategory = cat
                    }
                } label: {
                    VStack(spacing: 6) {
                        Text(cat.rawValue)
                            .font(.system(size: 15, weight: selectedCategory == cat ? .semibold : .regular))
                            .foregroundColor(selectedCategory == cat ? cat.accentColor : Color(hex: "8A7A60"))
                        Rectangle()
                            .fill(selectedCategory == cat ? cat.accentColor : Color.clear)
                            .frame(height: 2)
                    }
                }
                .frame(maxWidth: .infinity)
            }
        }
        .padding(.top, 4)
        .background(Color(hex: "0D0B1A"))
        .overlay(alignment: .bottom) {
            Rectangle()
                .fill(Color(hex: "C9A265").opacity(0.15))
                .frame(height: 1)
        }
    }

    private var regionScroll: some View {
        TabView {
            ForEach(filtered) { region in
                VStack {
                    RegionCardView(region: region)
                        .padding(.horizontal, 16)
                        .padding(.top, 16)
                    Spacer()
                }
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}
