import SwiftUI

struct HeroDetailView: View {
    let hero: Hero
    @Environment(\.horizontalSizeClass) private var sizeClass

    var body: some View {
        ZStack {
            Color(hex: "0D0B1A").ignoresSafeArea()
            if sizeClass == .regular {
                iPadLayout
            } else {
                iPhoneLayout
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(Color(hex: "0D0B1A").opacity(0.8), for: .navigationBar)
        .toolbarColorScheme(.dark, for: .navigationBar)
    }

    // MARK: iPhone
    private var iPhoneLayout: some View {
        ScrollView {
            VStack(spacing: 0) {
                artworkHeader(height: 400)
                infoSection
                    .padding(.horizontal, 20)
                    .padding(.bottom, 40)
            }
        }
        .ignoresSafeArea(edges: .top)
    }

    // MARK: iPad：左側立繪 + 右側資訊
    private var iPadLayout: some View {
        HStack(alignment: .top, spacing: 0) {
            artworkHeader(height: UIScreen.main.bounds.height)
                .frame(width: UIScreen.main.bounds.width * 0.42)
                .ignoresSafeArea(edges: .vertical)

            ScrollView {
                infoSection
                    .padding(32)
                    .padding(.top, 60)
            }
        }
        .ignoresSafeArea(edges: .top)
    }

    // MARK: 立繪
    private func artworkHeader(height: CGFloat) -> some View {
        ZStack(alignment: .bottom) {
            if UIImage(named: hero.artworkName) != nil {
                Image(hero.artworkName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: height)
                    .clipped()
            } else {
                LinearGradient(
                    colors: [hero.elementColor.opacity(0.35), Color(hex: "0D0B1A")],
                    startPoint: .top, endPoint: .bottom
                )
                .frame(height: height)
            }

            LinearGradient(
                colors: [.clear, Color(hex: "0D0B1A").opacity(0.6), Color(hex: "0D0B1A")],
                startPoint: .top, endPoint: .bottom
            )
            .frame(height: height * 0.5)

            VStack(spacing: 4) {
                Text(hero.name)
                    .font(.system(size: 34, weight: .bold))
                    .foregroundColor(Color(hex: "F5E6C0"))
                Text(hero.path + " · " + hero.element)
                    .font(.system(size: 12, weight: .light))
                    .tracking(3)
                    .foregroundColor(Color(hex: "C9A265"))
            }
            .padding(.bottom, 28)
        }
    }

    // MARK: 資訊
    private var infoSection: some View {
        VStack(alignment: .leading, spacing: 22) {
            HStack(spacing: 8) {
                HeroBadge(text: hero.path, icon: hero.pathIcon, color: Color(hex: "C9A265"))
                HeroBadge(text: hero.element, icon: nil, color: hero.elementColor)
            }

            goldDivider

            HStack(alignment: .top, spacing: 10) {
                Rectangle()
                    .fill(Color(hex: "C9A265"))
                    .frame(width: 3)
                    .cornerRadius(1.5)
                Text("「\(hero.quote)」")
                    .font(.system(size: 15, weight: .medium))
                    .italic()
                    .foregroundColor(Color(hex: "D4C09A"))
                    .lineSpacing(4)
            }

            goldDivider

            VStack(alignment: .leading, spacing: 10) {
                sectionLabel("背景故事")
                Text(hero.story)
                    .font(.system(size: 15))
                    .foregroundColor(Color(hex: "B8A880"))
                    .lineSpacing(6)
            }
        }
    }

    private var goldDivider: some View {
        LinearGradient(
            colors: [Color(hex: "C9A265").opacity(0.5), .clear],
            startPoint: .leading, endPoint: .trailing
        )
        .frame(height: 1)
    }

    private func sectionLabel(_ title: String) -> some View {
        HStack(spacing: 8) {
            Text(title)
                .font(.system(size: 11, weight: .semibold))
                .tracking(2)
                .foregroundColor(Color(hex: "C9A265"))
            Rectangle()
                .fill(Color(hex: "C9A265").opacity(0.25))
                .frame(height: 1)
        }
    }
}
