//
//  QuestionBank.swift
//  Quizzler
//


import Foundation

class QuestionBank {
    
    var list = [ChoiceQuestion]()
    
    init(){
      let question1=ChoiceQuestion()
        question1.setText(question1: "In what place was Christmas once illegal??")
        question1.addChoice(choice: "England", correct: false)
        question1.addChoice(choice: "France", correct: false)
        question1.addChoice(choice: "Brazil", correct: true)
        question1.addChoice(choice: "Russia", correct: false)
        let question2=ChoiceQuestion()
        question2.setText(question1: "In California, it is illegal to eat oranges while doing what??")
        question2.addChoice(choice: "Bathing", correct: false)
        question2.addChoice(choice: "Driving", correct: false)
        question2.addChoice(choice: "Gardening", correct: true)
        question2.addChoice(choice: "Working on computer", correct: false)
        let question3=ChoiceQuestion()
        question3.setText(question1: "Coulrophobia means fear of what?")
        question3.addChoice(choice: "Sacred Things", correct: false)
        question3.addChoice(choice: "Jews", correct: true)
        question3.addChoice(choice: "old people", correct: false)
        question3.addChoice(choice: "Clowns", correct: false)
        let question4=ChoiceQuestion()
        question4.setText(question1: "Which of the following is the longest running American animated TV show")
        question4.addChoice(choice: "Simpsons", correct: false)
        question4.addChoice(choice: "Pokemon", correct: false)
        question4.addChoice(choice: "Rugrats", correct: false)
        question4.addChoice(choice: "TV Funhouse", correct: true)
        let question5=ChoiceQuestion()
        question5.setText(question1: "Every year, over 8,800 people injure themselves with what apparently harmless, tiny object?")
        question5.addChoice(choice: "Knife", correct: false)
        question5.addChoice(choice: "Pencil", correct: false)
        question5.addChoice(choice: "Baseball bat", correct: false)
        question5.addChoice(choice: "Toothpick", correct: true)
        let question6=ChoiceQuestion()
        question6.setText(question1: "How many pounds of pressure do you need to rip off your ear?")
        question6.addChoice(choice: "11", correct: false)
        question6.addChoice(choice: "17", correct: false)
        question6.addChoice(choice: "2", correct: true)
        question6.addChoice(choice: "7", correct: false)
        let question7=ChoiceQuestion()
        question7.setText(question1: "At what temperature are Fahrenheit and Celsius the same?")
        question7.addChoice(choice: "0", correct: false)
        question7.addChoice(choice: "92", correct: true)
        question7.addChoice(choice: "50", correct: false)
        question7.addChoice(choice: "-40", correct: false)
        let question8=ChoiceQuestion()
        question8.setText(question1: "What are the odds of being killed by space debris?")
        question8.addChoice(choice: "1 in 1 trillion", correct: false)
        question8.addChoice(choice: "1 in 5 million", correct: false)
        question8.addChoice(choice: "1 in 5 billion", correct: true)
        question8.addChoice(choice: "1 in 10 billion", correct: false)
        let question9=ChoiceQuestion()
        question9.setText(question1: "The NY phone book had 22 Hitlers before WWII. How many did it have at the end of the twentieth century?")
        question9.addChoice(choice: "4", correct: true)
        question9.addChoice(choice: "0", correct: false)
        question9.addChoice(choice: "11", correct: false)
        question9.addChoice(choice: "13", correct: false)
        let question10=ChoiceQuestion()
        question10.setText(question1: "What percentage of Japanese citizens are cremated?")
        question10.addChoice(choice: "26", correct: false)
        question10.addChoice(choice: "5", correct: false)
        question10.addChoice(choice: "98", correct: true)
        question10.addChoice(choice: "11", correct: false)
        
        list.append(question1)
        list.append(question2)
        list.append(question3)
        list.append(question4)
        
      list.append(question5)
        list.append(question6)
        list.append(question7)
        list.append(question8)
        list.append(question9)
        list.append(question10)
    }
    
}
