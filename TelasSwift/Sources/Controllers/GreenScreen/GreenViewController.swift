//
//  GreenViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-16 on 08/12/23.
//

import UIKit

class GreenViewController: UIViewController {
    public var goToNextSreen: (() -> Void)?
    public var goToBeforeSreen: (() -> Void)?

    
    lazy var greenView: GreenView = {
        let view = GreenView()
        view.goToNextSreen = self.goToNextSreen
        view.goToBeforeSreen = self.goToBeforeSreen

        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = greenView
    }
}
