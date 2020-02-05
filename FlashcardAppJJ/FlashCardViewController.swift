//
//  FlashCardViewController.swift
//  FlashcardAppJJ
//
//  Created by Jigyasaa Sood on 2/4/20.
//  Copyright © 2020 Jigyasaa Sood. All rights reserved.
//

import UIKit

class FlashCardViewController: UIViewController {
    @IBOutlet weak var cardContainerView: UIView!
    
    @IBOutlet weak var thirdBtn: UIButton!
    @IBOutlet weak var secondBtn: UIButton!
    @IBOutlet weak var firstBtn: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerLabel.isHidden = true
        // Do any additional setup after loading the view.
        cardContainerView.layer.cornerRadius = 20.0
        cardContainerView.layer.shadowRadius = 15.0
        answerLabel.layer.cornerRadius = 20.0
        questionLabel.layer.cornerRadius = 20.0
        cardContainerView.layer.shadowOpacity = 0.2
        answerLabel.clipsToBounds = true
        questionLabel.clipsToBounds = true
        
        firstBtn.layer.borderColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        secondBtn.layer.borderColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        thirdBtn.layer.borderColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        
        firstBtn.layer.borderWidth = 3.0
        secondBtn.layer.borderWidth = 3.0
        thirdBtn.layer.borderWidth = 3.0
        
        firstBtn.layer.cornerRadius = 20.0
        secondBtn.layer.cornerRadius = 20.0
        thirdBtn.layer.cornerRadius = 20.0
        
        cardContainerView.layer.shadowRadius = 15.0

        cardContainerView.layer.shadowOpacity = 0.2
    }
    
    @IBAction func didTapOption1(_ sender: Any) {
        firstBtn.isHidden = true
    }
    
    @IBAction func didTapOption2(_ sender: Any) {
        questionLabel.isHidden = true
        answerLabel.isHidden = false
    }
    
    @IBAction func didTapOption3(_ sender: Any) {
        thirdBtn.isHidden = true
    }
    @IBAction func onTapFlashcard(_ sender: Any) {
        if(questionLabel.isHidden){
            questionLabel.isHidden = false
            answerLabel.isHidden = true
            firstBtn.isHidden = false
            secondBtn.isHidden = false
            thirdBtn.isHidden = false
        }
        else if(answerLabel.isHidden){
            questionLabel.isHidden = true
            answerLabel.isHidden = false
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
