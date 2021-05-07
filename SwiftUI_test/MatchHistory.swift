//
//  MatchHistory.swift
//  SwiftUI_test
//
//  Created by Jan Vaculik on 05.05.2021.
//
import Foundation

public struct Match: Decodable, Hashable {
    var id : UUID = UUID()
    public var queueId : Int
    public var participantIdentities : [ParticipantIdentity]
    public var participants : [Participant]
    public var gameCreation : Int
    
    enum CodingKeys: String, CodingKey {
        case queueId
        case participantIdentities
        case participants
        case gameCreation
    }
}

public struct ParticipantIdentity: Decodable, Hashable {
    var id : UUID = UUID()
    
    public var participantId : Int
    public var player : Player
    
    enum CodingKeys: String, CodingKey {
        case participantId
        case player
    }
}

public struct Player: Decodable, Hashable {
    public var summonerName : String
}

public struct Participant: Decodable, Hashable {
    var id : UUID = UUID()

    public var participantId : Int
    public var championId : Int
    public var stats : ParticipantStats
    
    enum CodingKeys: String, CodingKey {
        case participantId
        case championId
        case stats
    }
}

public struct ParticipantStats: Decodable, Hashable {
    public var kills : Int
    public var deaths : Int
    public var assists : Int
    public var win : Bool
}
