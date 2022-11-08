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
    @IBOutlet weak var image: UIImageView!
    
    var timer: Timer?
    var seconds = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tapEven = UITapGestureRecognizer(target: self, action: #selector(checkEven))
        let tapOdd = UITapGestureRecognizer(target: self, action: #selector(checkOdd))
        
        even.addGestureRecognizer(tapEven)
        odd.addGestureRecognizer(tapOdd)
        
        loadRandomNumber()
    }

    @objc func checkEven() {
        let number = Int(self.number.text!) ?? 0
        if isEven(number: number) {
            print("Even")
        }
        else {
            image.image = UIImage(named: "wrong")
            print("wrong answer")
        }
    }
    
    @objc func checkOdd() {
        let number = Int(self.number.text!) ?? 0
        if isEven(number: number) {
            print("Even")
        }
        else {
            print("Odd")
        }
    }
    
    func loadRandomNumber() {
        let number = Int(arc4random_uniform(100))
        self.number.text = "\(number)"
        image.image = UIImage(named: "")
        seconds = 6
    }
    
    func isEven(number: Int) -> Bool {
        if number / 2 == 0 {return true}
        else {return false}
      
    }
    

}

