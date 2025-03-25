//
//  FRDirection.swift
//  ForwardRewindPlayerView
//
//  Created by Hai Pham on 29/06/2022.
//

public enum FRDirection {
    case rewind, forward
    
    var iconName: String {
        switch self {
        case .rewind: return "triangle_left"
        case .forward: return "triangle_right"
        }
    }
    
    func orderImageViewss(_ imageViews: [UIImageView]) -> [UIImageView] {
        switch self {
        case .rewind: return imageViews.reversed()
        case .forward: return imageViews
        }
    }
    
    static func from(_ dir: Int) -> FRDirection {
        return dir == 0 ? .rewind : .forward
    }

    func toObjC() -> Int {
        return self == .rewind ? 0 : 1
    }
}
