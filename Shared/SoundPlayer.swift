//
//  SoundPlayer.swift
//  Instrument
//
//  Created by 小笠原佑樹 on 2022/07/09.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data

    var cymbalPlayer: AVAudioPlayer!

    func cymbalPlay() {
        do {
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            cymbalPlayer.play()
        } catch {
            print("シンバルを鳴らそうとしてエラーが発生しました！")
        }
    }
}
