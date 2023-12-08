//
//  BlueCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-16 on 08/12/23.
//

import UIKit

class BlueCoordinator{
    private var navigation: UINavigationController
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
}

extension BlueCoordinator: CoordinatorProtocol {
    func start() {
        self.navigation.pushViewController(BlueViewController(), animated: false)
    }
}
