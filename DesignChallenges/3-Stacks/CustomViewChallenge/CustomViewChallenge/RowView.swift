//
//  RowView.swift
//  CustomViewChallenge
//
//  Created by Bruno on 19/06/21.
//  Copyright © 2021 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

final class RowView: UIView {
    
    var rowTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .clear
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    var rowSwitch: UISwitch = {
        let rowSwitch = UISwitch()
        rowSwitch.translatesAutoresizingMaskIntoConstraints = false
        return rowSwitch
    }()
    
    
    init(title: String, isEnable: Bool) {
        super.init(frame: .zero)
        configureLabelWith(title)
        configureSwitchWith(isEnable)
    }
    
    func configureSwitchWith(_ arg: Bool) {
        rowSwitch.isOn = arg
        addSubview(rowSwitch)
        NSLayoutConstraint.activate([
            rowSwitch.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor),
            rowSwitch.centerYAnchor.constraint(equalTo: rowTitleLabel.centerYAnchor)
        ])
        
    }
    
    func configureLabelWith(_ title: String) {
        rowTitleLabel.text = title
        addSubview(rowTitleLabel)
        
        NSLayoutConstraint.activate([
            rowTitleLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor),
            rowTitleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor)
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // A suggestion about size. But one that can be overridden.
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 31)
    }
}
