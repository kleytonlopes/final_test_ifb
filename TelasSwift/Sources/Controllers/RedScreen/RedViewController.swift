//
//  RedViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-16 on 08/12/23.
//

import UIKit

class RedViewController: UIViewController {
    lazy var redView: RedView = {
        let view = RedView()
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = redView
    }
}
