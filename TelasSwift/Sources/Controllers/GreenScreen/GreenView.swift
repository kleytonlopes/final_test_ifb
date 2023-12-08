//
//  GreenView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-16 on 08/12/23.
//

import UIKit

class GreenView: UIView {
    let HEIGHT_BUTTON: CGFloat = 40.0
    let WIDTH_BUTTON: CGFloat = 150.0
    var goToNextSreen: (() -> Void)?
    var goToBeforeSreen: (() -> Void)?
    
    private lazy var blueButton : UIButton = {
        let button = ButtonDefault(title: "Go to Blue", color: .systemBlue)
        button.addTarget(self, action: #selector(self.buttonBlueDidTap), for: .touchUpInside)
        return button
    }()
    
    private lazy var redButton : UIButton = {
        let button = ButtonDefault(title: "Go to Red", color: .systemRed)
        button.addTarget(self, action: #selector(self.buttonRedDidTap), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func buttonRedDidTap(){
        goToNextSreen?()
    }
    
    @objc private func buttonBlueDidTap(){
        goToBeforeSreen?()
    }
}

extension GreenView: ViewCodeProtocol {
    func setupHierarchy() {
        self.addSubview(blueButton)
        self.addSubview(redButton)
    }
    
    func setupConstraints() {
        let constraints: [NSLayoutConstraint] = [
            self.blueButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.blueButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -100),
            self.blueButton.heightAnchor.constraint(equalToConstant: HEIGHT_BUTTON),
            self.blueButton.widthAnchor.constraint(equalToConstant: WIDTH_BUTTON),
            self.redButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.redButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            self.redButton.heightAnchor.constraint(equalToConstant: HEIGHT_BUTTON),
            self.redButton.widthAnchor.constraint(equalToConstant: WIDTH_BUTTON)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    func setupStyle() {
        self.backgroundColor = .green
    }
    
    
}

