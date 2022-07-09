//
//  ContentView.swift
//  Shared
//
//  Created by 小笠原佑樹 on 2022/07/09.
//

import SwiftUI

struct ContentView: View {
    let soundPlayer = SoundPlayer();

    var body: some View {
        ZStack {
            // 背景画像
            Image("background")
                .resizable() // リサイズ
                .edgesIgnoringSafeArea(.all) // 画面いっぱい
                .aspectRatio(contentMode: .fill) // 短編を基準にアスペクト比を維持
            
            HStack {
                // シンバルボタン
                Button(action: {
                    soundPlayer.cymbalPlay()
                }) {
                    InstrumentButtonImageView(imageName: "cymbal")
                }

                // ギター
                Button(action: {
                    soundPlayer.guitarPlay()

                }) {
                    InstrumentButtonImageView(imageName: "guitar")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
