//
//  HapticManager.swift
//  DubDubGrub
//
//  Created by Bob Coleman on 3/9/23.
//

import UIKit

struct HapticManager {
    
    static func playSuccess() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
}
