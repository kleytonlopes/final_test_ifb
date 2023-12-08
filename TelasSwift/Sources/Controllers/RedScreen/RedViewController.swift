//
//  RedViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-16 on 08/12/23.
//

import UIKit

class RedViewController: UIViewController {
    public var goToFirstSreen: (() -> Void)?
    public var goToBeforeSreen: (() -> Void)?
    
    lazy var redView: RedView = {
        let view = RedView()
        view.goToFirstSreen = self.goToFirstSreen
        view.goToBeforeSreen = self.goToBeforeSreen
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = redView
    }
}
