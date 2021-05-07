//
//  File.swift
//  SwiftUI_test
//
//  Created by Jan Vaculik on 09.04.2021.
//

public struct Matches: Decodable, Hashable{
    public var gameId : Int
    public var champion : Int
    public var queue : Int
    
}

public struct MatchInfo : Decodable, Hashable{
    public var startIndex : Int
    public var totalGames : Int
    public var endIndex : Int
    public var matches : [Matches]
}
