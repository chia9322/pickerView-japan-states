//
//  state.swift
//  PickerView
//
//  Created by Chia on 2022/03/18.
//

import Foundation

struct Area {
    let name: String
    let states: [String]
}

let areas = [
    Area(name: "北海道", states: ["北海道"]),
    Area(name: "東北", states: ["青森県", "岩手県", "宮城県", "秋田県", "山形県", "福島県"]),
    Area(name: "北関東", states: ["栃木県", "群馬県", "茨城県"]),
    Area(name: "首都圏", states: ["東京都", "埼玉県", "千葉県", "神奈川県"]),
    Area(name: "甲信越", states: ["山梨県", "長野県", "新潟県"]),
    Area(name: "中部", states: ["富山県", "石川県", "福井県"]),
    Area(name: "東海", states: ["静岡県", "岐阜県", "愛知県", "三重県"]),
    Area(name: "近畿", states: ["京都府", "大阪府", "滋賀県", "兵庫県", "奈良県", "和歌山県"]),
    Area(name: "中国", states: ["鳥取県", "島根県", "岡山県", "広島県", "山口県"]),
    Area(name: "四国", states: ["徳島県", "香川県", "愛媛県", "高知県"]),
    Area(name: "九州", states: ["福岡県", "佐賀県", "長崎県", "大分県", "熊本県", "宮崎県", "鹿児島県"]),
    Area(name: "沖縄", states: ["沖縄県"])
]
