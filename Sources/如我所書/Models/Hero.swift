import SwiftUI

struct Hero: Identifiable {
    let id = UUID()
    let name: String
    let path: String
    let element: String
    let imageName: String
    let artworkName: String
    let pathIcon: String
    let elementColor: Color
    let shortBio: String
    let quote: String
    let story: String
}

let heroList: [Hero] = [
    Hero(
        name: "阿格萊雅", path: "記憶", element: "雷",
        imageName: "icon_agelaiya", artworkName: "art_agelaiya",
        pathIcon: "sparkles", elementColor: Color(hex: "9B6FE0"),
        shortBio: "編織命運金絲線的黃金裔領袖",
        quote: "命運的絲線，終將匯聚於同一個結。",
        story: "奧克海瑪的領導者，引領所有黃金裔履行預言的核心人物。她擊敗泰坦 Mnestia、繼承其焰心，成為愛與記憶的半神。她相信每一段記憶都是命運網絡中不可割捨的一環。"
    ),
    Hero(
        name: "萬敵", path: "毀滅", element: "虛數",
        imageName: "icon_wandi", artworkName: "art_wandi",
        pathIcon: "burst.fill", elementColor: Color(hex: "F5C842"),
        shortBio: "以流血鑄就新生之路的凶悍戰士",
        quote: "唯有流血，才能換來真正的和平。",
        story: "凶悍的黃金裔繼承人，毫不猶豫地以戰爭與流血對抗敵人。他深信毀滅是通往新生的唯一道路，哪怕自身也不例外。他的戰意如虛數之力般難以捉摸，卻無比真實。"
    ),
    Hero(
        name: "緹寶", path: "同諧", element: "量子",
        imageName: "icon_tibao", artworkName: "art_tibao",
        pathIcon: "waveform", elementColor: Color(hex: "7B68EE"),
        shortBio: "穿梭諸世界傳遞訊息的量子傳訊者",
        quote: "你說的話，我記住了——在每一個世界。",
        story: "黃金裔中的傳訊者，能夠以量子之力穿梭於多個世界之間傳遞重要資訊。無論訊息多麼沉重，她都以輕盈的步伐前行，用同諧連結一切存在。"
    ),
    Hero(
        name: "遐蝶", path: "記憶", element: "量子",
        imageName: "icon_xiadie", artworkName: "art_xiadie",
        pathIcon: "sparkles", elementColor: Color(hex: "7B68EE"),
        shortBio: "引領亡靈安息的冥河之女",
        quote: "冥河不是終點，而是記憶最後的棲所。",
        story: "擊敗死神 Thanatos 後成為死亡之半神，擁有賜予亡者安寧的力量。她遊走於生死邊界，以記憶為渡船，引領靈魂找到最後的歸宿。"
    ),
    Hero(
        name: "那刻夏", path: "智識", element: "風",
        imageName: "icon_nakexia", artworkName: "art_nakexia",
        pathIcon: "books.vertical.fill", elementColor: Color(hex: "4FC3B0"),
        shortBio: "以知識之風質疑神明預言的博學學者",
        quote: "神明的預言，不過是尚未被反駁的假說。",
        story: "黃金裔中最淵博的學者，以嚴謹的知識體系質疑一切神聖預言。他深信理性是對抗眾神的最強武器，在真相面前，神話不過是待解的方程式。"
    ),
    Hero(
        name: "風堇", path: "記憶", element: "風",
        imageName: "icon_fengjin", artworkName: "art_fengjin",
        pathIcon: "sparkles", elementColor: Color(hex: "4FC3B0"),
        shortBio: "以禱告縫合天空裂縫的天空祭司",
        quote: "蒼穹破碎之處，我以禱告為針，以信念為線。",
        story: "翁法羅斯的天空祭司，擁有治癒蒼穹裂縫與重建神祕領域的力量。她的每一次禱告都迴盪在雲層之上，以風為媒、以記憶為力守護這片天空。"
    ),
    Hero(
        name: "賽飛兒", path: "虛無", element: "量子",
        imageName: "icon_saifeier", artworkName: "art_saifeier",
        pathIcon: "moon.fill", elementColor: Color(hex: "7B68EE"),
        shortBio: "超越時間謊言、行蹤難測的飛速影子",
        quote: "你看見的只是我的殘影，真正的我從未停下。",
        story: "飛速的影子，能夠超越時間與謊言的存在。她的身份如同密碼般令人難以解讀，虛無之路賦予她消融於黑暗中的能力，讓追蹤者永遠撲空。"
    ),
    Hero(
        name: "白厄", path: "毀滅", element: "物理",
        imageName: "icon_baie", artworkName: "art_baie",
        pathIcon: "burst.fill", elementColor: Color(hex: "C8C8C8"),
        shortBio: "被預言擊敗古泰坦、登上王座的英雄",
        quote: "預言說我會成為王，但沒有說我必須接受這個命運。",
        story: "被古老預言選中的無名英雄，命中注定在擊敗古泰坦後登上翁法羅斯的王座。他拒絕被命運定義，卻又無法逃脫那份早已刻入星脈的結局。"
    ),
    Hero(
        name: "海瑟音", path: "虛無", element: "物理",
        imageName: "icon_haiseyin", artworkName: "art_haiseyin",
        pathIcon: "moon.fill", elementColor: Color(hex: "C8C8C8"),
        shortBio: "歐克海瑪騎士團的鐵腕守護團長",
        quote: "騎士的職責，是守護那些無法守護自己的人。",
        story: "歐克海瑪騎士團的團長，以鐵腕紀律與絕對忠誠著稱。她的劍從未為私利而舉，只為守護翁法羅斯的秩序與人民。虛無並非空洞，而是她心中最深的信念。"
    ),
    Hero(
        name: "刻律德菈", path: "同諧", element: "風",
        imageName: "icon_kelvdela", artworkName: "art_kelvdela",
        pathIcon: "waveform", elementColor: Color(hex: "4FC3B0"),
        shortBio: "掌有法律焰心、審判不信者的塔蘭托司令官",
        quote: "法律之焰燃燒，不信者終將明白其意義。",
        story: "掌有法律焰心的塔蘭托司令官，以同諧之力對不信者施予審判。她將秩序與信仰視為同義詞，相信唯有嚴明的律法，才能維繫翁法羅斯的永恆和諧。"
    ),
    Hero(
        name: "長夜月", path: "記憶", element: "冰",
        imageName: "icon_changyeyue", artworkName: "art_changyeyue",
        pathIcon: "sparkles", elementColor: Color(hex: "78C8E0"),
        shortBio: "從時神 Oronyx 處繼承焰心的神秘來者",
        quote: "黑暗並非空無，而是記憶沉澱後的顏色。",
        story: "並非天生的黃金裔，卻在翁法羅斯終章從時神 Oronyx 處獲得時間焰心，成為半神。她神秘的外貌令人聯想到三月七，但真實身份與來歷至今仍是謎。"
    ),
    Hero(
        name: "丹恆・騰荒", path: "存護", element: "物理",
        imageName: "icon_danheng", artworkName: "art_danheng",
        pathIcon: "shield.fill", elementColor: Color(hex: "C8C8C8"),
        shortBio: "繼承大地焰心、以存護之力守望翁法羅斯的丹恆",
        quote: "大地不語，卻承載一切。",
        story: "丹恆的翁法羅斯形態，非天生黃金裔，卻從 Georios 處繼承了大地焰心。以存護命途守護翁法羅斯的根基不動搖，以沉默的力量承擔一切重量。"
    ),
    Hero(
        name: "昔漣", path: "記憶", element: "冰",
        imageName: "icon_xilian", artworkName: "art_xilian",
        pathIcon: "sparkles", elementColor: Color(hex: "78C8E0"),
        shortBio: "為安特翁未來播種記憶種子的使者",
        quote: "每一粒記憶的種子，都將在未來某日長成參天大樹。",
        story: "埃德斯埃利西亞之女，肩負著為安特翁的未來「播種記憶種子」的神聖使命。她以記憶之路將文明的記憶化為種子，相信記憶是比任何武器都更堅韌的根基。"
    )
]
