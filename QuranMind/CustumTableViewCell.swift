//
//  CustumTableViewCell.swift
//  QuranMind
//
//  Created by Adham Raouf on 27/01/2024.
//

import UIKit

class CustumTableViewCell: UITableViewCell {

    let customButton: UIButton = {
        let button = UIButton()
        // Customize the button as needed
        button.setTitle("<< swipe to show your progres", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }
    
    private func setupUI() {
        addSubview(customButton)
        contentView.backgroundColor = .clear
        // Set constraints for the button
        customButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            customButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            customButton.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
        customButton.isUserInteractionEnabled = true
        
    }
}
