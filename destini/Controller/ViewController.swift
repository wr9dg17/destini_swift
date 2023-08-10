//
//  ViewController.swift
//  destini
//
//  Created by Farid Hamzayev on 02.08.23.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var storyLabel: UILabel!
  @IBOutlet weak var firstChoiseBtn: UIButton!
  @IBOutlet weak var secondChoiseBtn: UIButton!
  
  var storyStore = StoryStore()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    updateUI()
  }

  @IBAction func choiseMade(_ sender: UIButton) {
    let userChoise = sender.currentTitle!
    storyStore.nextStory(userChoise)
    updateUI()
  }
  
  func updateUI() {
    let currentStory = storyStore.getStory()
    
    storyLabel.text = currentStory.title
    firstChoiseBtn.setTitle(currentStory.choice1, for: .normal)
    secondChoiseBtn.setTitle(currentStory.choice2, for: .normal)
  }
  
}

