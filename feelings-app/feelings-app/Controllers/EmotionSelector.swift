//
//  EmotionSelector.swift
//  feelings-app
//
//  Created by Juan Luque on 12/18/19.
//  Copyright © 2019 Juan Luque. All rights reserved.
//

import UIKit

class EmotionSelector: UIViewController {

    var delegate: EmotionTransfer? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func emotionWasSelected(sender: UIButton){
    print(sender.titleLabel!.text!)
    }

}
