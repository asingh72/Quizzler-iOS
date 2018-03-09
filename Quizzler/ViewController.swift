//
//  ViewController.swift
//  Quizzler
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    let allQuestion = QuestionBank()
    var selectedAns : String = ""
    var questionNum : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
   

    @IBAction func options(_ sender: AnyObject) {
        
        if sender.tag == 1
        {
            selectedAns = "1";
        }
        else if sender.tag == 2
        {
            selectedAns = "2";
        }
        else if sender.tag == 3
        {
            selectedAns = "3";
        }
        else{
            selectedAns = "4";
        }
        checkAnswer()
        
        questionNum = questionNum + 1
        nextQuestion()
        
    }
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        
    }
    
    
    func updateUI() {
        
        scoreLabel.text = "Score : \(score)"
        progressLabel.text = "\(questionNum+1)/10"
      
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNum+1)
        
    }
    

    func nextQuestion() {
        
        if questionNum <= 9 {
            questionLabel.text = allQuestion.list[questionNum].getQuestion()
            var button:UIButton=UIButton()
            for i in 1...4
            {
                button=view.viewWithTag(i) as! UIButton
            button.setTitle(allQuestion.list[questionNum].getChoice(index: i-1), for: .normal)
            }
            updateUI()

        } else {
            let alert = UIAlertController(title: "Great", message: "Your score is "+String(score)+", want to start again ..?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIActionAlert) in
                self.startOver()
            })
            
            

            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            
        }
        
        
        
    }
    
    
    func checkAnswer() {
        let correctAns = allQuestion.list[questionNum].getAnswer()
        if correctAns == selectedAns {
            ProgressHUD.showSuccess("Correct")
            score += 1
        } else {

            ProgressHUD.showError("Wrong!")
 
        }
        
    }
    
    
    func startOver() {
        
        questionNum = 0
        score = 0
        nextQuestion()
       
    }
    

    
}
