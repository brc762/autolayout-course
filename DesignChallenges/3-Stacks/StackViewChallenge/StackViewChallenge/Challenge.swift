//
//  Challenge.swift
//  Challenge
//
//  Created by Jonathan Rasmusson Work Pro on 2019-10-17.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

class Challenge: UIViewController {
    
    var stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fill
        stack.axis = .vertical
        return stack
    }()
    
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
     
     Challenge: See if you can embed all these controls in a StackView like this.
     
     ┌────────StackView─────────┐
     │                          │
     │        offlineRow        │
     │                          │
     │      offlineSublabel     │
     │                          │   axis = vertical
     │       crossfadeView      │   distribution = fill
     │                          │   alignment = fill
     │        gaplessRow        │   spacing = 20
     │                          │
     │       hideSongsRow       │
     │                          │
     │     normalizationRow     │
     │                          │
     └──────────────────────────┘
     
     */
    func setupViews() {
        let offlineRow = RowView(title: "Offline", isOn: false)
        let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        let crossfadeView = CrossfadeView()
        
        let gaplessRow = RowView(title: "Gapless Playback", isOn: true)
        let hideSongsRow = RowView(title: "Hide Unplayable Songs", isOn: true)
        let normalizationRow = RowView(title: "Enable Audio Normalization", isOn: true)
        
        offlineRow.translatesAutoresizingMaskIntoConstraints = false
        crossfadeView.translatesAutoresizingMaskIntoConstraints = false
        gaplessRow.translatesAutoresizingMaskIntoConstraints = false
        hideSongsRow.translatesAutoresizingMaskIntoConstraints = false
        normalizationRow.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            stackView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 0),
            stackView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: 0)
        ])
        
        stackView.addArrangedSubview(offlineRow)
        stackView.addArrangedSubview(offlineSublabel)
        stackView.addArrangedSubview(crossfadeView)
        stackView.addArrangedSubview(gaplessRow)
        stackView.addArrangedSubview(hideSongsRow)
        stackView.addArrangedSubview(normalizationRow)
    }
}



