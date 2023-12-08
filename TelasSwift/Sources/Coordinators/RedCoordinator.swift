//
//  RedCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-16 on 08/12/23.
//

import UIKit

class RedCoordinator{
    private var navigation: UINavigationController
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
}

extension RedCoordinator: CoordinatorProtocol {
    func start() {
        let viewController = RedViewController()
        viewController.goToFirstSreen = {
            self.goToFirstScreen()
        }
        viewController.goToBeforeSreen = {
            self.goToBeforeScreen()
        }
        self.navigation.pushViewController(viewController, animated: true)
    }
    
    private func goToBeforeScreen(){
        self.navigation.popViewController(animated: true)
    }
    
    private func goToFirstScreen(){
        navigation.popToRootViewController(animated: true)
    }
}
