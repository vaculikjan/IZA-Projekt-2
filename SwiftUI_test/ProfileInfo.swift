//
//  ProfileInfo.swift
//  SwiftUI_test
//
//  Created by Jan Vaculik on 07.04.2021.
//

public struct ProfileInfo : Decodable, Hashable{
    public var accountId : String
    public var profileIconId : Int
    public var name : String
    public var id : String
    public var puuid : String
}
