//
//  ArchFloatingPanelLayout.swift
//  Archeologie
//
//  Created by Matěj Novák on 03/09/2020.
//  Copyright © 2020 Matěj Novák. All rights reserved.
//

import Foundation
import FloatingPanel

//class ArchFloatingPanelLayout: FloatingPanelLayout {
//    
//    var offset:CGFloat = 0
//    var fullEnabled = true
//    var type:LayoutType = .thematics
//    
//    public func insetFor(position: FloatingPanelPosition) -> CGFloat? {
//        
//        switch type {
//        case .thematics:
//            switch position {
//            case .full: return 0
//            case .half: return 365 - offset
//            case .tip: return 230 - offset
//            default: return nil
//            }
//        case .locations:
//            switch position {
//            case .half: return 427 - offset
//            case .tip: return 210  - offset
//            case .full: return 0
//            default: return nil
//            }
//        }
//        
//    }
//    var supportedPositions: Set<FloatingPanelPosition> {
////        return fullEnabled ? [.tip,.half,.full] :  [.tip,.half]
//        return  [.tip,.half]
//
//    }
//    public var initialPosition: FloatingPanelPosition {
//        return .tip
//    }
//    
//    enum LayoutType {
//        case thematics
//        case locations
//    }
//}
class MyFloatingPanelLayout: FloatingPanelLayout {
    let position: FloatingPanelPosition = .bottom
    let initialState: FloatingPanelState = .tip
    var type:LayoutType = .thematics

    let anchors: [FloatingPanelState: FloatingPanelLayoutAnchoring]
    
    init(type: LayoutType) {
        self.type = type
        self.anchors =  [
            .half: FloatingPanelLayoutAnchor(absoluteInset: type.inset(state: .half), edge: .bottom, referenceGuide: .safeArea),
            .tip: FloatingPanelLayoutAnchor(absoluteInset: type.inset(state: .tip), edge: .bottom, referenceGuide: .safeArea),
        ]
    }
    enum LayoutType {
            case thematics
            case locations
        
        func inset(state:FloatingPanelState) -> CGFloat {
            switch self {
                
            case .thematics:
                if state == .half {
                    return 355
                } else if state == .tip {
                    return 200
                }
                return 0
            case .locations:
                if state == .half {
                    return 417
                } else if state == .tip {
                    return 200
                }
                return 0
            }
        }
    }
}
