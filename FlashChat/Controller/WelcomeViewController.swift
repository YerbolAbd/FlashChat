//
//  WelcomeViewController.swift
//  FlashChat
//
//  Created by Ербол on 04.06.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = ""
        var scope = 0
        let textLabel = K.appName
        for letter in textLabel {
            Timer.scheduledTimer(withTimeInterval: 0.1 * Double(scope), repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            scope += 1
        }
}
}
