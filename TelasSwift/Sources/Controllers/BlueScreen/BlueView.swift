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
    var goToNextSreen: (() -> Void)?
    
    private lazy var greenButton : UIButton = {
        let button = UIButton()
        button.setTitle("Go to Green", for: .normal)
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(self.buttonDidTap), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func buttonDidTap(){
        goToNextSreen?()
    }
    
}

extension BlueView: ViewCodeProtocol {
    func setupHierarchy() {
        self.addSubview(greenButton)
    }
    
    func setupConstraints() {
        let constraints: [NSLayoutConstraint] = [
            self.greenButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.greenButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.greenButton.heightAnchor.constraint(equalToConstant: HEIGHT_BUTTON),
            self.greenButton.widthAnchor.constraint(equalToConstant: WIDTH_BUTTON)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    func setupStyle() {
        self.backgroundColor = .blue
    }
    
    
}

