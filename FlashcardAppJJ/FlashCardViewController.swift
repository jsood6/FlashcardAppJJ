//
//  FlashCardViewController.swift
//  FlashcardAppJJ
//
//  Created by Jigyasaa Sood on 2/4/20.
//  Copyright © 2020 Jigyasaa Sood. All rights reserved.
//

import UIKit

class FlashCardViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerLabel.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTapFlashcard(_ sender: Any) {
        if(questionLabel.isHidden){
            questionLabel.isHidden = false
            answerLabel.isHidden = true
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
