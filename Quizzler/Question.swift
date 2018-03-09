//
//  Question.swift
//  Quizzler
//

import Foundation


class Question {
    
   private var question : String
   private var answer:String
    
    init(){
    
        
        question = ""
        answer = ""
    }
    
    func setText(question1:String)
    {
        question=question1
    }
    func setAnswer(answer1:String)
    {
        answer=answer1
    }
    func checkAnswer(response:String)->Bool
    {
        return response.elementsEqual(answer)
        
    }
    func getAnswer()->String
    {
        return answer;
    }
    func getQuestion()->String
    {
        return question;
    }
}
class ChoiceQuestion:Question{
    
    private var choices:[String]=[]
    
    func addChoice(choice:String,correct:Bool)
    {
        choices.append(choice)
        if(correct)
        {
            let choiceString:String=""+String(choices.count);
            setAnswer(answer1:choiceString)
        }
        
    }
    func getChoice(index:Int)->String
    {
        return choices[index]
    }
    
    func display()
    {
        
    }
}
