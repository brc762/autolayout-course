//
//  Challenge.swift
//  CustomViewChallenge
//
//  Created by Jonathan Rasmusson Work Pro on 2019-10-17.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
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
    
    /*
     
     Challenge here is to take the various controls and practice extracting components as subViews (UIViews).
     
     Two good candidates for extraction are the:
     
     - RowView (label and a switch)
     - CrossfadeView (label, progressbar, and max min label)
     
     ┌───────────────┐        ┌───────────────┐
     │               │        │               │
     │               ├────────▶    RowView    │ x4
     │               │        │               │
     │               │        └───────────────┘
     │   Challenge   │ extract
     │               │
     │               │        ┌───────────────┐
     │               │        │               │
     │               ├────────▶ CrossfadeView │ x1
     │               │        │               │
     └───────────────┘        └───────────────┘
     
     See if you can extract those into their own custom UIViews and then lay those out.
     
     */
    func setupViews() {
        
        let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        let offlineRow = RowView.init(title: "Offline", isEnable: false)
        offlineRow.translatesAutoresizingMaskIntoConstraints = false
        let crossfade = CrossfadeView.init(viewData: CrossfadeViewData.init(minSeconds: "0s", maxSeconds: "12s", title: "Crossfade", progress: 75.5))
        crossfade.translatesAutoresizingMaskIntoConstraints = false
        let gaplessRow = RowView.init(title: "Gapless Playback", isEnable: true)
        gaplessRow.translatesAutoresizingMaskIntoConstraints = false
        let hideRow = RowView.init(title: "Hide Unplayable Songs", isEnable: true)
        hideRow.translatesAutoresizingMaskIntoConstraints = false
        let nathanyRow = RowView.init(title: "Um beijo na Nathany?", isEnable: true)
        nathanyRow.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(offlineRow)
        self.view.addSubview(offlineSublabel)
        self.view.addSubview(crossfade)
        self.view.addSubview(gaplessRow)
        self.view.addSubview(hideRow)
        self.view.addSubview(nathanyRow)
        
        NSLayoutConstraint.activate([
            offlineRow.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            offlineRow.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            offlineRow.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16)
        ])
        
        NSLayoutConstraint.activate([
            offlineSublabel.topAnchor.constraint(equalTo: offlineRow.bottomAnchor, constant: 32),
            offlineSublabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            offlineSublabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16)
        ])
        
        crossfade.setContentHuggingPriority(.defaultHigh, for: .vertical)
        NSLayoutConstraint.activate([
            crossfade.topAnchor.constraint(equalTo: offlineSublabel.bottomAnchor, constant: 32),
            crossfade.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            crossfade.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            crossfade.heightAnchor.constraint(greaterThanOrEqualToConstant:50)
        ])
        
        NSLayoutConstraint.activate([
            gaplessRow.topAnchor.constraint(equalTo: crossfade.bottomAnchor, constant: 32),
            gaplessRow.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            gaplessRow.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16)
        ])
        
        NSLayoutConstraint.activate([
            hideRow.topAnchor.constraint(equalTo: gaplessRow.bottomAnchor, constant: 16),
            hideRow.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            hideRow.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16)
        ])
        
        NSLayoutConstraint.activate([
            nathanyRow.topAnchor.constraint(equalTo: hideRow.bottomAnchor, constant: 16),
            nathanyRow.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            nathanyRow.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16)
        ])
        
    }
}


