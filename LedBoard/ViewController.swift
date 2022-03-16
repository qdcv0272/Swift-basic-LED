//
//  ViewController.swift
//  LedBoard
//
//  Created by changhun kim on 2022/03/16.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var contentsLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.contentsLabel.textColor = .yellow
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let settingViewController = segue.destination as? SettingViewController {
      settingViewController.delegate = self
      settingViewController.ledText = self.contentsLabel.text
      settingViewController.textColor = self.contentsLabel.textColor
      settingViewController.backgroundColor = self.view.backgroundColor ?? .black //만약 옵셔널이면 블랙
    }
  }

}

extension ViewController: LedBoardSettingDelegate {
  func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
    if let text = text {
      self.contentsLabel.text = text
    }
    self.contentsLabel.textColor = textColor
    self.view.backgroundColor = backgroundColor
  }
}
