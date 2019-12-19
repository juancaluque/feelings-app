//
//  MainController.swift
//  feelings-app
//
//  Created by Juan Luque on 12/17/19.
//  Copyright © 2019 Juan Luque. All rights reserved.
//

import UIKit

class MainController: UIViewController, EmotionTransfer {

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var picture: UIImageView!
    
    var dictionary = ["Joy" : "Happines is the secret of all beauty, there is no beauty without hapiness","Envy": "Envy is the art of counting other's blessings instead of your own", "Excitement": "Dreams get you into the futurea and add excitement to the present", "Calmness": "Set peace of mind as your highest goal, and organize life around it", "Confusion": "If you are confuse it is because you got some thinking to do", "Nostalgia": "Somtimes you will never know the value of a moment until it becomes a momory", "Boredom": "Boredom is God's way of telling you that you are wasting time", "Triumph": "Shape your life story into a magnificent tale of triumph", "Sadness": "Any fool can be happy, it takes a man with a real heart to make beauty out of the stuff that makes us weep", "Awkwardness": "Great endownments often announce themselves in youth in the form of singularity and awkwardness", "Anger": "You will not be punished for you anger, you will be punish by your anger", "Romance": "You know you are in love when you can't fall asleep because reality is finally better than your dreams", "Nervousness": "Being nervous is not bad. It just means somethig importat is happening", "Anxiety": "Just when the caterpillar thought the world was ending, he turn into a butterfly", "Fear": "Fear causes hesitation and hesitation will cause your worst fears to become a reality", "Pain": "When it hurst, observe. Life is trying to teach you something"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func userDidChoose(color: UIColor, withName emotionName: String) {
        view.backgroundColor = color
               picture.isHidden = true
               
        for (key, value) in dictionary{
            if emotionName == key{
               nameLabel.text = "\(value)"
            }
        }
    }
        
                
                   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "emotionSegue" {
            guard let emotionSelector = segue.destination as? EmotionSelector else { return }
            emotionSelector.delegate = self
        }
    }

}

