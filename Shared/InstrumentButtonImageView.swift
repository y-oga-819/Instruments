//
//  InstrumentButtonImageView.swift
//  Instrument
//
//  Created by 小笠原佑樹 on 2022/07/09.
//

import SwiftUI

struct InstrumentButtonImageView: View {
    let imageName: String
    var body: some View {
        Image(imageName)
            .renderingMode(.original)
    }
}

struct InstrumentButtonImageView_Previews: PreviewProvider {
    static var previews: some View {
        InstrumentButtonImageView(imageName: "cymbal")
    }
}
