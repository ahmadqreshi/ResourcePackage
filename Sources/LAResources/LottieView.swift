//
//  File.swift
//  
//
//  Created by Ahmad Qureshi on 14/02/23.
//

import UIKit
import Lottie
import SwiftUI
public struct LottieView: UIViewRepresentable {
    let fileName: String
    let isLooping: Bool
    let animationCompletes: (() -> Void)?
    public init(fileName: String,isLooping: Bool, animationCompletes: (() -> Void)?) {
        self.fileName = fileName
        self.isLooping = isLooping
        self.animationCompletes = animationCompletes
    }
    let animationView = LottieAnimationView()
    public func makeUIView(context: Context) -> some UIView {
        let view = UIView(frame: .zero)
        animationView.animation = LottieAnimation.named(fileName,bundle: .module)
        animationView.contentMode = .scaleAspectFit
        animationView.play(fromProgress: 0,
                           toProgress: 1,
                           loopMode: isLooping ? .loop : .playOnce,
                           completion: { (finished) in
            if finished {
                animationCompletes?()
            } else {
                debugPrint("animation cancelled")
            }
        })
        view.addSubview(animationView)
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        animationView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        return view
    }
    public func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}
