//
//  Challenge.swift
//  BasicAnchors
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-26.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Challenge: UIViewController {
    
    let margin: CGFloat = 20
    let spacing: CGFloat = 32
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupViews()
    }
    
    func setupNavigationBar() {
        navigationItem.title = "Playback"
    }
    
    func setupViews() {
        
        let offlineLabel = makeLabel(withText: "Offline")
        self.view.addSubview(offlineLabel)
        
        let offlineSwitch = makeSwitch(isOn: false)
        self.view.addSubview(offlineSwitch)
        
        let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        self.view.addSubview(offlineSublabel)
        
        let crossfadeLabel = makeBoldLabel(withText: "Crossfade")
        self.view.addSubview(crossfadeLabel)
        
        let crossfadeMinLabel = makeSubLabel(withText: "0s")
        self.view.addSubview(crossfadeMinLabel)
        
        let crossfadeMaxLabel = makeSubLabel(withText: "12s")
        self.view.addSubview(crossfadeMaxLabel)
        
        let crossfadeProgressView = makeProgressView()
        self.view.addSubview(crossfadeProgressView)
        
        let gaplessPlaybackLabel = makeLabel(withText: "Gapless Playback")
        self.view.addSubview(gaplessPlaybackLabel)
        
        let gaplessPlaybackSwitch = makeSwitch(isOn: true)
        self.view.addSubview(gaplessPlaybackSwitch)
        
        let hideSongsLabel = makeLabel(withText: "Hide Unplayable Songs")
        self.view.addSubview(hideSongsLabel)
        
        let hideSongsSwitch = makeSwitch(isOn: true)
        self.view.addSubview(hideSongsSwitch)
        
        let enableNormalizationLabel = makeLabel(withText: "Enable Audio Normalization")
        self.view.addSubview(enableNormalizationLabel)
        
        let normalizationSwitch = makeSwitch(isOn: true)
        self.view.addSubview(normalizationSwitch)
        
        NSLayoutConstraint.activate([
            offlineLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: margin),
            offlineLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: margin)
        ])
        
        NSLayoutConstraint.activate([
            offlineSwitch.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -margin),
            offlineSwitch.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: margin)
        ])
        
        NSLayoutConstraint.activate([
            offlineSublabel.topAnchor.constraint(equalTo: offlineLabel.bottomAnchor, constant: margin),
            offlineSublabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: margin),
            offlineSublabel.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -margin)
        ])
        
        NSLayoutConstraint.activate([
            crossfadeLabel.topAnchor.constraint(equalTo: offlineSublabel.bottomAnchor, constant:  margin),
            crossfadeLabel.centerXAnchor.constraint(equalTo:self.view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            crossfadeMinLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: margin),
            crossfadeMinLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: spacing)
        ])
        
        NSLayoutConstraint.activate([
            crossfadeProgressView.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor),
            crossfadeProgressView.leftAnchor.constraint(equalTo: crossfadeMinLabel.rightAnchor, constant: 4),
            crossfadeProgressView.rightAnchor.constraint(equalTo: crossfadeMaxLabel.leftAnchor, constant: -4)
        ])
        
        NSLayoutConstraint.activate([
            crossfadeMaxLabel.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -margin),
            crossfadeMaxLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: spacing)
        ])
        
        NSLayoutConstraint.activate([
            crossfadeMaxLabel.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -margin),
            crossfadeMaxLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: spacing)
        ])
        
        NSLayoutConstraint.activate([
            gaplessPlaybackLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: margin),
            gaplessPlaybackLabel.topAnchor.constraint(equalTo: crossfadeProgressView.bottomAnchor, constant: spacing)
        ])
        
        NSLayoutConstraint.activate([
            gaplessPlaybackSwitch.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -margin),
            gaplessPlaybackSwitch.centerYAnchor.constraint(equalTo: gaplessPlaybackLabel.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            hideSongsLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: margin),
            hideSongsLabel.topAnchor.constraint(equalTo: gaplessPlaybackLabel.bottomAnchor, constant: spacing)
        ])
        
        
        NSLayoutConstraint.activate([
            hideSongsSwitch.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -margin),
            hideSongsSwitch.centerYAnchor.constraint(equalTo: hideSongsLabel.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            enableNormalizationLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: margin),
            enableNormalizationLabel.topAnchor.constraint(equalTo: hideSongsLabel.bottomAnchor, constant: spacing)
        ])
        
        NSLayoutConstraint.activate([
            normalizationSwitch.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: -margin),
            normalizationSwitch.centerYAnchor.constraint(equalTo: enableNormalizationLabel.centerYAnchor)
        ])
        
        
        
    }
}

