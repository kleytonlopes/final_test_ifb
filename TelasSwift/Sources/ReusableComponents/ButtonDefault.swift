//
//  ButtonDefault.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-16 on 08/12/23.
//

import UIKit

class ButtonDefault: UIButton {
    init(title: String, color: UIColor) {
        super.init(frame: .zero)
        setup(title: title, color: color)
    }
    
    private func setup(title: String, color: UIColor){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = color
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = 20
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
