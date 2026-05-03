import SwiftUI

struct RegionCardView: View {
    let region: Region

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            headerBand
            descriptionBlock
        }
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(hex: "1A1628"))
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(region.category.accentColor.opacity(0.25), lineWidth: 1)
                )
        )
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }

    private var headerBand: some View {
        ZStack(alignment: .bottomLeading) {
            if let url = region.imageURL {
                AsyncImage(url: url) { phase in
                    switch phase {
                    case .success(let image):
                        image.resizable().scaledToFill()
                    default:
                        gradient
                    }
                }
                .frame(maxWidth: .infinity)
                .frame(height: 140)
                .clipped()
            } else {
                gradient.frame(height: 140)
            }

            LinearGradient(
                colors: [.clear, Color(hex: "0D0B1A").opacity(0.75)],
                startPoint: .top, endPoint: .bottom
            )

            VStack(alignment: .leading, spacing: 2) {
                if let subtitle = region.subtitle {
                    Text("「\(subtitle)」")
                        .font(.system(size: 11, weight: .medium))
                        .tracking(1.5)
                        .foregroundColor(region.category.accentColor)
                }
                Text(region.name)
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(Color(hex: "F5E6C0"))
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 14)
        }
        .frame(height: 140)
        .clipped()
    }

    private var gradient: some View {
        LinearGradient(
            colors: region.category.gradientColors,
            startPoint: .topLeading, endPoint: .bottomTrailing
        )
    }

    private var descriptionBlock: some View {
        HStack(alignment: .top, spacing: 10) {
            Rectangle()
                .fill(region.category.accentColor.opacity(0.6))
                .frame(width: 2)
                .cornerRadius(1)
            Text(region.description)
                .font(.system(size: 14))
                .foregroundColor(Color(hex: "B8A880"))
                .lineSpacing(5)
        }
        .padding(16)
    }
}
