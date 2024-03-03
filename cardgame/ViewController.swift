//
//  ViewController.swift
//  cardgame
//
//  Created by Administrator on 01/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftCardView: UIImageView!
    
    @IBOutlet weak var rightCardView: UIImageView!
    
    @IBOutlet weak var playerScoreView: UILabel!
    
    @IBOutlet weak var cpuScoreView: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var leftScore = 0
    var rightScore = 0
    
    @IBAction func buttonTapped(_ sender: Any) {
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        leftCardView.image = UIImage(named: "card\(leftNumber)")
        rightCardView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber{
            leftScore += 1
            playerScoreView.text = String(leftScore)
        }
        else if leftNumber < rightNumber{
            rightScore += 1
            cpuScoreView.text = String(rightScore)
        }
    }
    
    
    
    

}

