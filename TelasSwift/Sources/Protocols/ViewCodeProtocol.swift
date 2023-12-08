//
//  ViewCodeProtocol.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-16 on 08/12/23.
//

import Foundation

protocol ViewCodeProtocol {
    func setupHierarchy()
    func setupConstraints()
    func setupStyle()
}

extension ViewCodeProtocol {
    func setup(){
        setupHierarchy()
        setupConstraints()
        setupStyle()
    }
}
