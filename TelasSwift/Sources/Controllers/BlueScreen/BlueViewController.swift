//
//  ViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-16 on 08/12/23.
//

import UIKit

class BlueViewController: UIViewController {
    public var goToNextSreen: (() -> Void)?

    
    lazy var blueView: BlueView = {
        let view = BlueView()
        view.goToNextSreen = self.goToNextSreen
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = blueView
    }

}

