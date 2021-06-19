//
//  CrossfadeView.swift
//  CustomViewChallenge
//
//  Created by Bruno on 19/06/21.
//  Copyright © 2021 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

protocol CrossfadeViewDataProtocol {
    var minSeconds: String {get set}
    var maxSeconds: String {get set}
    var title: String {get set}
    var progress: Float {get set}
}

final class CrossfadeViewData: CrossfadeViewDataProtocol {
    var minSeconds: String
    var maxSeconds: String
    var title: String
    var progress: Float
    
    init(minSeconds: String, maxSeconds: String, title: String, progress: Float) {
        self.minSeconds = minSeconds
        self.maxSeconds = maxSeconds
        self.title = title
        self.progress = progress
    }
}

final class CrossfadeView: UIView {
    
    var titleLabel: UILabel  = makeLabel()
    var minLabel: UILabel = makeLabel()
    var maxLabel: UILabel = makeLabel()
    var progress: UIProgressView = makeProgressView()
    
    init(viewData: CrossfadeViewDataProtocol) {
        super.init(frame: .zero)
        addSubview(titleLabel)
        addSubview(minLabel)
        addSubview(progress)
        addSubview(maxLabel)
        self.setupTitle(viewData.title)
        self.setupMinLabel(viewData.minSeconds)
        self.setupProgress(with: viewData.progress)
        self.setupMaxLabel(viewData.maxSeconds)
    }
    
    private func setupProgress(with progress: Float) {
        self.progress.setProgress(progress, animated: true)
        NSLayoutConstraint.activate([
            self.progress.leftAnchor.constraint(equalTo: self.minLabel.rightAnchor, constant: 4),
            self.progress.centerYAnchor.constraint(equalTo: self.minLabel.centerYAnchor),
            self.progress.rightAnchor.constraint(equalTo: self.maxLabel.leftAnchor, constant: -4)
        ])
    }
    
    private func setupMaxLabel(_ title: String) {
        self.maxLabel.text = title
        self.maxLabel.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        NSLayoutConstraint.activate([
            self.maxLabel.topAnchor.constraint(equalTo: self.titleLabel.topAnchor, constant: 32),
            self.maxLabel.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: 0)
        ])
    }
    
    private func setupMinLabel(_ title: String) {
        self.minLabel.text = title
        self.minLabel.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        NSLayoutConstraint.activate([
            self.minLabel.topAnchor.constraint(equalTo: self.titleLabel.topAnchor, constant: 32),
            self.minLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 0)
        ])
    }
    
    private func setupTitle(_ title: String) {
        self.titleLabel.text = title
        NSLayoutConstraint.activate([
            self.titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            self.titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
