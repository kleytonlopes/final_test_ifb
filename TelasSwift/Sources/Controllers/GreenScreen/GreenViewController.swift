//
//  GreenViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-16 on 08/12/23.
//

import UIKit

class GreenViewController: UIViewController {
    lazy var greenView: GreenView = {
        let view = GreenView()
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = greenView
    }
}
