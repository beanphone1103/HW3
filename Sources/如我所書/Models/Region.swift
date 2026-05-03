import SwiftUI

enum RegionCategory: String, CaseIterable, Identifiable {
    case dawn    = "黎明"
    case night   = "永夜"
    case foreign = "異域"

    var id: String { rawValue }

    var accentColor: Color {
        switch self {
        case .dawn:    return Color(hex: "C9A265")
        case .night:   return Color(hex: "6A5ACD")
        case .foreign: return Color(hex: "4FC3B0")
        }
    }

    var gradientColors: [Color] {
        switch self {
        case .dawn:    return [Color(hex: "3D2B0A"), Color(hex: "0D0B1A")]
        case .night:   return [Color(hex: "0A0A2E"), Color(hex: "0D0B1A")]
        case .foreign: return [Color(hex: "0A2A28"), Color(hex: "0D0B1A")]
        }
    }
}

struct Region: Identifiable {
    let id = UUID()
    let subtitle: String?
    let name: String
    let category: RegionCategory
    let description: String
    let imageURL: URL?
}

private func img(_ path: String) -> URL? { URL(string: path) }

let regionList: [Region] = [
    // MARK: 黎明
    Region(
        subtitle: "永恆聖城", name: "奧赫瑪", category: .dawn,
        description: "負世之泰坦刻法勒以黎明機器庇護的聖城，永恆的光芒驅散四周黑潮，是翁法羅斯人類文明最後的避難所。",
        imageURL: img("https://img.game8.co/4082572/6be0fdfaf0f46dab6bd745005d3abde0.png/original")
    ),
    Region(
        subtitle: "神諭聖地", name: "雅努薩波利斯", category: .dawn,
        description: "命運三泰坦的宗教聖地，先知在此宣讀黃金裔的預言。命運的絲線從這片土地上交織延伸，引領英雄走向終章。",
        imageURL: img("https://img.game8.co/4083558/051502f28ad4a58dc06765d7c27c8003.png/original")
    ),
    Region(
        subtitle: "穹頂關塞", name: "晨昏之眼", category: .dawn,
        description: "天空泰坦艾格勒的神體所在之地，懸浮於雲端的空中要塞。從此俯瞰整個翁法羅斯，黎明與黑夜在此界分。",
        imageURL: img("https://img.game8.co/4176133/b6ebe08b673c102a7d9ad91621b1ba41.png/original")
    ),
    Region(
        subtitle: "浴血戰端", name: "懸鋒城", category: .dawn,
        description: "信仰紛爭泰坦的移動要塞，戰士之城以血與鐵鑄就榮耀。戰意如虛數之力湧動，每一場戰鬥都是通往新生的獻祭。",
        imageURL: img("https://img.game8.co/4083494/83addba04117aa40ae218ebf5b001f1b.png/original")
    ),
    Region(
        subtitle: "半神議院", name: "黎明雲崖", category: .dawn,
        description: "黃金裔聚首議事之所，凌駕雲端的議院見證每一次命運抉擇。十三位半神的意志在此碰撞，決定翁法羅斯的走向。",
        imageURL: img("https://img.game8.co/4150303/38a020c2f5c17ddd1d61f00d401fc953.png/original")
    ),
    Region(
        subtitle: "酣歌海垠", name: "斯緹科西亞", category: .dawn,
        description: "海洋泰坦法吉娜信徒的城邦，歡歌笑語迴盪在碧波之上。這片臨海之地以同諧之力連結萬物，美酒與詩歌永不止息。",
        imageURL: img("https://img.game8.co/4248986/142e74bef16b3895cd9b3dc5530f5a4d.png/show")
    ),

    // MARK: 永夜
    Region(
        subtitle: "沉淪暮城", name: "奧赫瑪", category: .night,
        description: "黎明機器熄滅後，昔日聖城沉入永恆黑暗。曾經照耀人間的光輝成為廢墟與悲愁，倖存者在陰影中掙扎求存。",
        imageURL: img("https://img.game8.co/4177386/b321dcf650891bce207b8b860c35532f.jpeg/original")
    ),
    Region(
        subtitle: "囈語密林", name: "神悟樹庭", category: .night,
        description: "理性泰坦瑟希斯的學術聖地，深沉的黑夜使學者的論述化為囈語。知識之樹在黑暗中腐朽，真理與謊言難以辨分。",
        imageURL: img("https://img.game8.co/4117510/1f0688bf708a2598c38e93dc97b4a81b.png/original")
    ),
    Region(
        subtitle: "龍骸古城", name: "斯緹科西亞", category: .night,
        description: "歡歌散去後的廢墟，巨龍的骸骨橫亙其間。昔日繁華的海岸城邦淪為亡靈之地，潮聲中迴盪著無盡的哀鳴。",
        imageURL: img("https://img.game8.co/4150302/715eda284fa954785eaa72e3122045eb.png/show")
    ),
    Region(
        subtitle: "紛爭荒墟", name: "懸鋒城", category: .night,
        description: "戰火熄滅後的荒蕪廢土，唯有鏽蝕的刀鋒見證曾經的戰意。移動要塞停止了前行，永夜的沉寂取代了昔日的鼓聲。",
        imageURL: img("https://img.game8.co/4084796/7e17b7b7dd66220653e10320f5b80202.png/original")
    ),
    Region(
        subtitle: "命運重淵", name: "雅努薩波利斯", category: .night,
        description: "預言應驗後殘存的廢墟，命運的重量壓垮了這片神聖之地。曾經指引眾人的先知之聲沉寂，唯有碎裂的神像佇立黑暗。",
        imageURL: img("https://img.game8.co/4117914/84e99c9c41007038f6c946ccc2928b98.png/original")
    ),
    Region(
        subtitle: "無暉祈堂", name: "黎明雲崖", category: .night,
        description: "光輝散盡的祈禱堂，在永夜中默默承載著最後的信仰。半神議院的榮光已逝，殘存的祈禱者仍在黑暗中尋找救贖。",
        imageURL: img("https://img.game8.co/4176490/e7af5857cbca8da2614032ec931124d8.png/show")
    ),

    // MARK: 異域
    Region(
        subtitle: nil, name: "創世渦心", category: .foreign,
        description: "十二泰坦原初神性的封存之地，火種在此沉眠等待繼承者。渦心的力量超越時間與空間，是翁法羅斯一切生命的源頭。",
        imageURL: img("https://img.game8.co/4084021/ec8399355c4b51ad2a2dc6bb587722a1.jpeg/original")
    ),
    Region(
        subtitle: nil, name: "哀麗秘榭", category: .foreign,
        description: "偏僻的妖精棲息地，歐洛尼斯庇護之處。美麗與哀愁並存，秘榭中的生靈以歌聲維繫著這片世界最後一隅的溫柔。",
        imageURL: img("https://img.game8.co/4325278/a77dfbee98338bb4019ddb7260e4248c.jpeg/original")
    ),
]
