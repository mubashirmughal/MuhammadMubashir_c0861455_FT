//
//  ViewController.swift
//  MuhammadMubashir_c0861455_FT
//
//  Created by MacStudent on 2022-11-07.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var even: UILabel!
    @IBOutlet weak var odd: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var timer: Timer?
    var seconds = 5
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        
        let tapeven = UITapGestureRecognizer(target: self, action: #selector(checkEven))
        let tapodd = UITapGestureRecognizer(target: self, action: #selector(checkOdd))
   
        even.addGestureRecognizer(tapeven)
        odd.addGestureRecognizer(tapodd)
        
        loadRandomNumber()
    }

    @objc func checkEven() {
        let number = Int(self.number.text!) ?? 0
        if isEven(number: number) {
            print("Even")
        }
        else {
            imageView.image = UIImage(named: "wrong")
            print("wrong answer")
        }
    }
    
    @objc func checkOdd() {
        let number = Int(self.number.text!) ?? 0
        if isEven(number: number) {
            print("odd")
        }
        else {
            imageView.image = UIImage(named: "wrong")
            print("wrong answer")
        }
    }
    
    func loadRandomNumber() {
        let number = Int(arc4random_uniform(99))
        self.number.text = "\(number)"
    }
    
    func isEven(number: Int) -> Bool {
        if number % 2 == 0 {return false}
        //else {return false}
        return true
      
    }
    

}

