#!/bin/bash
python3 << 'PYEOF'
import os, shutil

src      = os.path.expanduser("~/Desktop/黃金裔")
dst_base = os.path.expanduser("~/Desktop/如我所書/Sources/如我所書/Assets.xcassets")

name_map = {
    "阿格萊雅":  "icon_agelaiya",
    "萬敵":      "icon_wandi",
    "緹寶":      "icon_tibao",
    "遐蝶":      "icon_xiadie",
    "那刻夏":    "icon_nakexia",
    "風堇":      "icon_fengjin",
    "賽飛兒":    "icon_saifeier",
    "白厄":      "icon_baie",
    "海瑟音":    "icon_haiseyin",
    "刻律德菈":  "icon_kelvdela",
    "長夜月":    "icon_changyeyue",
    "丹恆・騰荒": "icon_danheng",
    "昔漣":      "icon_xilian",
}

contents_json = """{{
  "images": [
    {{"idiom":"universal","scale":"1x"}},
    {{"filename":"{name}@2x{ext}","idiom":"universal","scale":"2x"}},
    {{"filename":"{name}@3x{ext}","idiom":"universal","scale":"3x"}}
  ],
  "info":{{"author":"xcode","version":1}}
}}"""

try:
    files = os.listdir(src)
except PermissionError:
    print("❌ 無法存取 ~/Desktop/黃金裔，請確認 Terminal 有完整磁碟存取權限")
    exit(1)

ok = 0
for file in files:
    stem, ext = os.path.splitext(file)
    if stem not in name_map:
        print(f"⚠️  跳過（名稱不在對照表）: {file}")
        continue
    asset_name = name_map[stem]
    set_dir    = os.path.join(dst_base, asset_name + ".imageset")
    os.makedirs(set_dir, exist_ok=True)
    shutil.copy(
        os.path.join(src, file),
        os.path.join(set_dir, f"{asset_name}@2x{ext}")
    )
    with open(os.path.join(set_dir, "Contents.json"), "w") as f:
        f.write(contents_json.format(name=asset_name, ext=ext))
    print(f"✓  {stem} → {asset_name}")
    ok += 1

print(f"\n圖示完成：成功複製 {ok} / {len(name_map)} 張")

# ── 立繪 ──────────────────────────────────────────────
art_src = os.path.expanduser("~/Desktop/十二黃金裔")
art_map = {
    "阿格萊雅立繪":  "art_agelaiya",
    "萬敵立繪":      "art_wandi",
    "緹寶立繪":      "art_tibao",
    "遐蝶立繪":      "art_xiadie",
    "那刻夏立繪":    "art_nakexia",
    "風菫立繪":      "art_fengjin",
    "賽飛兒立繪":    "art_saifeier",
    "白厄立繪":      "art_baie",
    "海瑟音立繪":    "art_haiseyin",
    "刻律德菈立繪":  "art_kelvdela",
    "長夜月立繪":    "art_changyeyue",
    "丹恆・騰荒立繪": "art_danheng",
    "昔漣立繪":      "art_xilian",
}

try:
    art_files = os.listdir(art_src)
except PermissionError:
    print("❌ 無法存取 ~/Desktop/十二黃金裔，請確認 Terminal 有完整磁碟存取權限")
    exit(1)

art_ok = 0
for file in art_files:
    stem, ext = os.path.splitext(file)
    if stem not in art_map:
        print(f"⚠️  跳過（名稱不在對照表）: {file}")
        continue
    asset_name = art_map[stem]
    set_dir    = os.path.join(dst_base, asset_name + ".imageset")
    os.makedirs(set_dir, exist_ok=True)
    shutil.copy(
        os.path.join(art_src, file),
        os.path.join(set_dir, f"{asset_name}@2x{ext}")
    )
    with open(os.path.join(set_dir, "Contents.json"), "w") as f:
        f.write(contents_json.format(name=asset_name, ext=ext))
    print(f"✓  {stem} → {asset_name}")
    art_ok += 1

print(f"\n立繪完成：成功複製 {art_ok} / {len(art_map)} 張")
PYEOF
