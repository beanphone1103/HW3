import Foundation

struct VersionEntry: Identifiable {
    let id = UUID()
    let version: String
    let name: String
    let youtubeID: String

    var youtubeURL: URL {
        URL(string: "https://www.youtube.com/watch?v=\(youtubeID)")!
    }
}

let versionList: [VersionEntry] = [
    VersionEntry(version: "3.0", name: "再創世的凱歌",       youtubeID: "C-HtHm2j4oI"),
    VersionEntry(version: "3.1", name: "門扉之啟，王座之終",  youtubeID: "8DNFByA5fdY"),
    VersionEntry(version: "3.2", name: "走過安眠地的花叢",   youtubeID: "tU8SpZhnpt0"),
    VersionEntry(version: "3.3", name: "在黎明升起時墜落",   youtubeID: "e8suWXD8jso"),
    VersionEntry(version: "3.4", name: "因為太陽將要毀傷",   youtubeID: "bwj-WxggXcI"),
    VersionEntry(version: "3.5", name: "英雄未死之前",       youtubeID: "gjeN3gqzbWQ"),
    VersionEntry(version: "3.6", name: "於長夜重返大地",     youtubeID: "_2B_woXdf_E"),
    VersionEntry(version: "3.7", name: "成為昨日的明天",     youtubeID: "r4gljUbCzqA"),
]
