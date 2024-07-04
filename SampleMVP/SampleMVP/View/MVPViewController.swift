//
//  MVPViewController.swift
//  SampleMVP
//
//  Created by Mumthasir VP on 04/07/24.
//

import UIKit

// View
class MVPViewController: UIViewController {
    @IBOutlet weak var BtnClickme: UIButton!
    @IBOutlet weak var lblName: UILabel!
    
    lazy var presenter = MVPPresenter(view: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func clickmeAction(_ sender: Any) {
        presenter.startGame()
    }
}

extension MVPViewController: MVPPresenterView {
    func updateUI(data: GameModel) {
        let color = UIColor.random
        self.view.backgroundColor = color
        self.lblName.text = "\(data.name) of age: \(data.age) likes \(color.accessibilityName) color"
    }
}


// Extension for random coloring
extension UIColor {
    static var random: UIColor {
        return UIColor(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            alpha: 1.0
        )
    }
}
