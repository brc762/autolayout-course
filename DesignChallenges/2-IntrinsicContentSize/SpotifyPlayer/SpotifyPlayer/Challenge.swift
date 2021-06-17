//
//  Challenge.swift
//  SpotifyPlayer
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-26.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Challenge: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        let albumImage = makeImageView(named: "rush")
        let trackLabel = makeTrackLabel(withText: "Tom Sawyer")
        let albumLabel = makeAlbumLabel(withText: "Rush • Moving Pictures (2011 Remaster) sssssssssss s1")
        let playButton = makePlayButton()
        let previewStartLabel = makePreviewLabel(withText: "0:00")
        let previewEndLabel = makePreviewLabel(withText: "0:30")
        let progressView = makeProgressView()
        let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")
        
        view.addSubview(albumImage)
        view.addSubview(trackLabel)
        view.addSubview(albumLabel)
        view.addSubview(playButton)
        view.addSubview(previewStartLabel)
        view.addSubview(progressView)
        view.addSubview(previewEndLabel)
        view.addSubview(spotifyButton)
        
        
        NSLayoutConstraint.activate([
            albumImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            albumImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            albumImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            albumImage.heightAnchor.constraint(equalTo: albumImage.widthAnchor, multiplier: 1),
            albumImage.widthAnchor.constraint(equalToConstant: view.bounds.width)
        ])
        
        NSLayoutConstraint.activate([
            trackLabel.topAnchor.constraint(equalTo: albumImage.bottomAnchor, constant: 8),
            trackLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        albumLabel.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
        albumLabel.numberOfLines = 0
        NSLayoutConstraint.activate([
            albumLabel.topAnchor.constraint(equalTo: trackLabel.bottomAnchor, constant: 8),
            albumLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8),
            albumLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8)
        ])
        
        
        NSLayoutConstraint.activate([
            playButton.topAnchor.constraint(equalTo: albumLabel.bottomAnchor, constant: 8),
            playButton.leftAnchor.constraint(equalTo: albumLabel.leftAnchor, constant: 8),
            playButton.widthAnchor.constraint(equalToConstant: 42),
            playButton.heightAnchor.constraint(equalToConstant: 42)
        ])
        
        previewStartLabel.setContentHuggingPriority(.defaultHigh, for: .vertical)
        NSLayoutConstraint.activate([
            previewStartLabel.leftAnchor.constraint(equalTo: playButton.rightAnchor, constant: 4),
            previewStartLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            progressView.leftAnchor.constraint(equalTo: previewStartLabel.rightAnchor, constant: 4),
             progressView.rightAnchor.constraint(equalTo: previewEndLabel.leftAnchor, constant: -4),
            progressView.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            
        ])
        
        previewEndLabel.setContentHuggingPriority(.defaultHigh, for: .vertical)
        NSLayoutConstraint.activate([
            previewEndLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8),
            previewEndLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            spotifyButton.topAnchor.constraint(equalTo: previewStartLabel.bottomAnchor, constant: 32),
            spotifyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
}
