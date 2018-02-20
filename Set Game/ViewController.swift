//
//  ViewController.swift
//  Set Game
//
//  Created by Jelly Slather on 2/16/18.
//  Copyright © 2018 Rudinski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    let fullDeck = createDeck()

    
    @IBAction func touchCard(_ sender: UIButton) {
        
    }
    
    @IBOutlet var cardButtons: [UIButton]!
    
    let attributedColor: [NSAttributedStringKey : Any] = [
        .foregroundColor : UIColor.red,
        .foregroundColor : UIColor.green,
        .foregroundColor : UIColor.purple,
        ]
    
    let attributedShade: [NSAttributedStringKey : Any] = [
        .strokeWidth : -1.0,
        //filled in
        .strokeWidth : 5.0,
        //outline
    ]
    
    lazy var shapeColor = NSAttributedString(string : triangleCard.rawValue, attributes: attributedColor)

    
    

    var triangleCard = ShapeType.Triangle
    var Circle = ShapeType.Circle
    var Square = ShapeType.Square

}

