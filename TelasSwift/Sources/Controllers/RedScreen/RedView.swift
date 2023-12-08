//
//  RedView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-16 on 08/12/23.
//

import UIKit

class RedView: UIView {
    let HEIGHT_BUTTON: CGFloat = 40.0
    let WIDTH_BUTTON: CGFloat = 150.0
    
    private lazy var blueButton : UIButton = {
        let button = UIButton()
        button.setTitle("Go to Blue", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var greenButton : UIButton = {
        let button = UIButton()
        button.setTitle("Go to Green", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension RedView: ViewCodeProtocol {
    func setupHierarchy() {
        self.addSubview(blueButton)
        self.addSubview(greenButton)
    }
    
    func setupConstraints() {
        let constraints: [NSLayoutConstraint] = [
            self.blueButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.blueButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -100),
            self.blueButton.heightAnchor.constraint(equalToConstant: HEIGHT_BUTTON),
            self.blueButton.widthAnchor.constraint(equalToConstant: WIDTH_BUTTON),
            self.greenButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.greenButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.greenButton.heightAnchor.constraint(equalToConstant: HEIGHT_BUTTON),
            self.greenButton.widthAnchor.constraint(equalToConstant: WIDTH_BUTTON)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    func setupStyle() {
        self.backgroundColor = .green
    }
    
    
}

