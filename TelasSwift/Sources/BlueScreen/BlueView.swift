//
//  BlueView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-16 on 08/12/23.
//

import UIKit

class BlueView: UIView {
    let HEIGHT_BUTTON: CGFloat = 40.0
    let WIDTH_BUTTON: CGFloat = 150.0
    
    private lazy var button : UIButton = {
        let button = UIButton()
        button.setTitle("Go to Green", for: .normal)
        button.backgroundColor = .green
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        self.translatesAutoresizingMaskIntoConstraints = false
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension BlueView: ViewCodeProtocol {
    func setupHierarchy() {
        self.addSubview(button)
    }
    
    func setupConstraints() {
        let constraints: [NSLayoutConstraint] = [
            self.button.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.button.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.button.heightAnchor.constraint(equalToConstant: HEIGHT_BUTTON),
            self.button.widthAnchor.constraint(equalToConstant: WIDTH_BUTTON)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    func setupStyle() {
        self.backgroundColor = .blue
    }
    
    
}

