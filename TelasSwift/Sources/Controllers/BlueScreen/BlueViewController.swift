//
//  ViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-16 on 08/12/23.
//

import UIKit

class BlueViewController: UIViewController {
    lazy var blueView: BlueView = {
        let view = BlueView()
//        view.onRegisterTap = self.onRegisterTap
//        view.onLoginTap = self.onLoginTap
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = blueView
    }


}

