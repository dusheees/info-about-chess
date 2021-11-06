//
//  ImageName.swift
//  info about chess
//
//  Created by Андрей on 07.11.2021.
//

enum imageName: String {
    case king = "king"
    case queen = "queen"
    case bishop = "bishop"
    case knight = "knight"
    case rook = "rook"
    case pawn = "pawn"
    
    var definition: String {
        switch self {
        case .king:
            return "что-то про короля"
        case .queen:
            return "что-то про королеву"
        case .bishop:
            return "что-то про ферзя"
        case .knight:
            return "что-то про коня"
        case .rook:
            return "что-то про ладью"
        case .pawn:
            return "что-то про пешку"
        }
    }
}
