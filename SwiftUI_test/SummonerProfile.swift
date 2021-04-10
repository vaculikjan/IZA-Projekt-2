//
//  File.swift
//  SwiftUI_test
//
//  Created by Jan Vaculik on 07.04.2021.
//

public struct SummonerProfile : Decodable, Hashable{
    public var leagueId : String
    public var summonerId : String
    public var summonerName : String
    public var queueType : String
    public var tier : String
    public var rank : String
    public var leaguePoints : Int
    public var wins : Int
    public var losses : Int
    public var hotStreak : Bool
    public var veteran : Bool
    public var freshBlood : Bool
    public var inactive : Bool
}
