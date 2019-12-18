//
//  EmotionTransfer.swift
//  feelings-app
//
//  Created by Juan Luque on 12/18/19.
//  Copyright © 2019 Juan Luque. All rights reserved.
//

import Foundation
import UIKit

protocol EmotionTransfer {
    func userDidChoose(color:UIColor, withName emotionName: String)
}
