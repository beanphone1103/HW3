import SwiftUI

struct HeroRowView: View {
    let hero: Hero

    var body: some View {
        HStack(spacing: 14) {
            avatarView
            infoStack
            Spacer(minLength: 0)
        }
        .padding(14)
        .background(
            RoundedRectangle(cornerRadius: 14)
                .fill(Color(hex: "1A1628"))
                .overlay(
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color(hex: "C9A265").opacity(0.18), lineWidth: 1)
                )
        )
    }

    private var avatarView: some View {
        ZStack {
            Circle()
                .fill(hero.elementColor.opacity(0.12))
                .frame(width: 72, height: 72)

            if UIImage(named: hero.imageName) != nil {
                Image(hero.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 68, height: 68)
                    .clipShape(Circle())
            } else {
                Text(String(hero.name.prefix(1)))
                    .font(.system(size: 26, weight: .bold))
                    .foregroundColor(hero.elementColor)
                    .frame(width: 68, height: 68)
                    .background(hero.elementColor.opacity(0.1))
                    .clipShape(Circle())
            }
        }
        .overlay(
            Circle().stroke(hero.elementColor.opacity(0.5), lineWidth: 1.5)
        )
    }

    private var infoStack: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(hero.name)
                .font(.system(size: 17, weight: .semibold))
                .foregroundColor(Color(hex: "F5E6C0"))

            HStack(spacing: 6) {
                HeroBadge(text: hero.path, icon: hero.pathIcon, color: Color(hex: "C9A265"))
                HeroBadge(text: hero.element, icon: nil, color: hero.elementColor)
            }

            Text(hero.shortBio)
                .font(.system(size: 12))
                .foregroundColor(Color(hex: "8A7A60"))
                .lineLimit(2)
                .fixedSize(horizontal: false, vertical: true)
        }
    }
}

struct HeroBadge: View {
    let text: String
    let icon: String?
    let color: Color

    var body: some View {
        HStack(spacing: 3) {
            if let icon {
                Image(systemName: icon)
                    .font(.system(size: 9, weight: .medium))
            }
            Text(text)
                .font(.system(size: 11, weight: .medium))
        }
        .foregroundColor(color)
        .padding(.horizontal, 8)
        .padding(.vertical, 3)
        .background(color.opacity(0.12))
        .clipShape(Capsule())
        .overlay(Capsule().stroke(color.opacity(0.35), lineWidth: 0.5))
    }
}
