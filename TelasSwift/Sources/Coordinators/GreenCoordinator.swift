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
        viewController.goToBeforeSreen = {
            self.goToBeforeScreen()
        }
        viewController.goToNextSreen = {
            self.goToRedViewController()
        }
        self.navigation.pushViewController(viewController, animated: true)
    }
    
    private func goToBeforeScreen(){
        self.navigation.popViewController(animated: true)
    }
    
    private func goToRedViewController(){
        print("Go to Red")
    }
}
