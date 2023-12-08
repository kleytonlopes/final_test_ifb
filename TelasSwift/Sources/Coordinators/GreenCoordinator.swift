//
//  GreenCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-16 on 08/12/23.
//

import UIKit

class GreenCoordinator{
    private var navigation: UINavigationController
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
}

extension GreenCoordinator: CoordinatorProtocol {
    func start() {
        let viewController = GreenViewController()
        self.navigation.pushViewController(viewController, animated: true)
    }
}
