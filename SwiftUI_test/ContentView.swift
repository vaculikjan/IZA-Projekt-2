//
//  ContentView.swift
//  SwiftUI_test
//
//  Created by Jan Vaculik on 07.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    var champions = Champion()
    
    @State var championCount = Champion.returnChampions()
    @State var championCountNo = [Int](repeating: 0, count: 155)
    @State var summoner : ProfileInfo? = nil
    @State var profile : [SummonerProfile] = []
    @State var match : [MatchInfo] = []
    var summonerName : String
    var shard : String
    let apiKey = "RGAPI-6bd4820d-0296-4766-9795-a97d353e9a1e"
    
    var body: some View {
        
        VStack{
            if (championCountNo[0] > 0) {
                HStack(){
                    if (summoner != nil) {
                        Image(String(summoner!.profileIconId))
                        .resizable()
                        .frame(width: 75.0, height: 75.0)
                        .clipShape(Circle())
                        .padding(.trailing, 7)
                    }
                    
                    if (profile.count > 0) {
                        Text(profile[0].summonerName)
                        .font(.largeTitle).fontWeight(.bold)
                        .frame(width: 250, alignment: .leading)
                        .padding(.trailing, 15)
                    }
                    else {
                        Text(summonerName)
                        .font(.largeTitle).fontWeight(.bold)
                        .frame(width: 200, alignment: .leading)
                        .padding(.trailing, 65)
                    }
                }.padding(.bottom, 80)
                HStack(){
                    VStack{
                        if (profile.count > 0 && profile[0].queueType == "RANKED_SOLO_5x5") {
                            Image(String(profile[0].tier))
                            .resizable()
                                .frame(width: 70.0, height: 80.0)
                            Text("Ranked Solo")
                                .font(.caption)
                            Text(("\(profile[0].tier) \(profile[0].rank)").capitalized).fontWeight(.bold)
                        }
                        else if (profile.count > 1 && profile[1].queueType == "RANKED_SOLO_5x5") {
                            Image(String(profile[1].tier))
                            .resizable()
                                .frame(width: 70.0, height: 80.0)
                            Text("Ranked Solo")
                                .font(.caption)
                            Text(("\(profile[1].tier) \(profile[1].rank)").capitalized).fontWeight(.bold)
                        }
                        else {
                            Image("UNRANKED")
                            .resizable()
                                .frame(width: 75.0, height: 75.0)
                            Text("Ranked Solo")
                                .font(.caption)
                            Text(("Unranked").capitalized).fontWeight(.bold)
                        }
                    }
                    .padding(.trailing, 100)
                    VStack{
                        if (profile.count > 1 && profile[1].queueType == "RANKED_FLEX_SR") {
                            Image(String(profile[1].tier))
                            .resizable()
                                .frame(width: 70.0, height: 80.0)
                            Text("Ranked Flex")
                                .font(.caption)
                            Text(("\(profile[1].tier) \(profile[1].rank)").capitalized).fontWeight(.bold)
                        }
                        else if(profile.count > 0 && profile[0].queueType == "RANKED_FLEX_SR") {
                            Image(String(profile[0].tier))
                            .resizable()
                                .frame(width: 70.0, height: 80.0)
                            Text("Ranked Flex")
                                .font(.caption)
                            Text(("\(profile[0].tier) \(profile[0].rank)").capitalized).fontWeight(.bold)
                        }
                        else {
                            Image("UNRANKED")
                            .resizable()
                                .frame(width: 75.0, height: 75.0)
                            Text("Ranked Flex")
                                .font(.caption)
                            Text(("Unranked").capitalized).fontWeight(.bold)
                        }
                    }
                }
                if (summoner != nil) {
                    Divider()
                }
                VStack {
                    
                    if (championCountNo[1] > 0) {
                        HStack {
                            Image(champions.championCode[championCount[1]]!)
                            .resizable()
                            .frame(width: 50.0, height: 50.0)
                            .clipShape(Circle())
                            .padding(.trailing, 10)
                            Text(String("Games played: \(championCountNo[1])"))
                            .frame(width: 200, alignment: .leading)
                            .padding(.trailing, 35)
                        }
                    }
                    if (championCountNo[2] > 0) {
                        HStack {
                            Image(champions.championCode[championCount[2]]!)
                            .resizable()
                            .frame(width: 50.0, height: 50.0)
                            .clipShape(Circle())
                            .padding(.trailing, 10)
                            Text(String("Games played: \(championCountNo[2])"))
                            .frame(width: 200, alignment: .leading)
                            .padding(.trailing, 35)
                        }
                    }
                    if (championCountNo[3] > 0) {
                        HStack {
                            Image(champions.championCode[championCount[3]]!)
                            .resizable()
                            .frame(width: 50.0, height: 50.0)
                            .clipShape(Circle())
                            .padding(.trailing, 10)
                            Text(String("Games played: \(championCountNo[3])"))
                            .frame(width: 200, alignment: .leading)
                            .padding(.trailing, 35)
                        }
                    }
                    if (championCountNo[4] > 0) {
                        HStack {
                            Image(champions.championCode[championCount[4]]!)
                            .resizable()
                            .frame(width: 50.0, height: 50.0)
                            .clipShape(Circle())
                            .padding(.trailing, 10)
                            Text(String("Games played: \(championCountNo[4])"))
                            .frame(width: 200, alignment: .leading)
                            .padding(.trailing, 35)
                        }
                    }
                    if (championCountNo[5] > 0) {
                        HStack {
                            Image(champions.championCode[championCount[5]]!)
                            .resizable()
                            .frame(width: 50.0, height: 50.0)
                            .clipShape(Circle())
                            .padding(.trailing, 10)
                            Text(String("Games played: \(championCountNo[5])"))
                            .frame(width: 200, alignment: .leading)
                            .padding(.trailing, 35)
                        }
                    }
                    if (championCountNo[0] > 0) {
                        HStack {
                            Text(String("Total games played: \(championCountNo[0])")).fontWeight(.bold)
                            .frame(width: 200, alignment: .leading)
                        }
                        .padding(.top, 10)
                    }
                    
                }
                .padding(.bottom, 75)
                .padding(.top, 20)
            }
            else if (summoner != nil){
                Text("Loading summoner").fontWeight(.bold)
            }
            else {
                Text("Couldn't find summoner ...").fontWeight(.bold)
            }
            
        }.onAppear(perform: getSummonerData)
    }
    
    func getSummonerData() -> Void {
        if !summonerName.isAlphanumeric {
            return
        }
        var nameCh = summonerName.lowercased()
        nameCh = nameCh.replacingOccurrences(of: " ", with: "%20")
        var shardCh = ""
        switch shard {
        case "EUNE":
            shardCh = "eun1"
        case "EUW":
            shardCh = "euw1"
        case "NA":
            shardCh = "na1"
        default:
            shardCh = "unknown"
        }
        
        let url = URL(string: "https://\(shardCh).api.riotgames.com/lol/summoner/v4/summoners/by-name/\(nameCh)?api_key=\(apiKey)")!
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, _, _ in
            var jsonData : ProfileInfo
            if data != nil {
                
                do {
                    jsonData = try JSONDecoder().decode(ProfileInfo.self, from: data!)
                    if (UIImage(named: String(jsonData.profileIconId)) == nil) {
                        jsonData.profileIconId = 1
                    }
                    getProfileData(summonerID: jsonData.id, shardCh : shardCh)
                    var beginIndex = 0
                    for _ in 1...10 {
                        getMatchData(accountID: jsonData.accountId, shardCh: shardCh, beginIndex : beginIndex)
                        beginIndex += 100
                    }
    
                }

                catch {
                    print("Didn't fetch summoner")
                    return
                }
                DispatchQueue.main.async {
                    summoner = jsonData
                }
            }
        }.resume()
    }
    
    func getProfileData(summonerID : String, shardCh : String) -> Void {
        let url = URL(string: "https://\(shardCh).api.riotgames.com/lol/league/v4/entries/by-summoner/\(summonerID)?api_key=\(apiKey)")!
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, _, _ in
            
            if data != nil {
                let jsonData : [SummonerProfile]
                do {
                    jsonData = try JSONDecoder().decode([SummonerProfile].self, from: data!)
                }

                catch {
                    print("Didn't load profile")
                    return
                }
                DispatchQueue.main.async {
                    profile = jsonData
                }
            }
        }.resume()
    }
    
    func getMatchData(accountID : String, shardCh : String, beginIndex : Int) -> Void {

        let url = URL(string: "https://\(shardCh).api.riotgames.com/lol/match/v4/matchlists/by-account/\(accountID)?beginTime=1610103600000&beginIndex=\(String(beginIndex))&api_key=\(apiKey)")!
        
        let request = URLRequest(url: url)

        URLSession.shared.dataTask(with: request) { data, _, _ in

            if data != nil {
                let jsonData : MatchInfo
                do {
                    jsonData = try JSONDecoder().decode(MatchInfo.self, from: data!)
                }

                catch {
                    print("Couldn't load matches")
                    return
                }
                DispatchQueue.main.async {
                    for match in jsonData.matches {
                        championCountNo[championCount.firstIndex(of: match.champion)!] += 1
                        championCountNo[championCount.firstIndex(of: 999)!] += 1
                        let combined = zip(championCountNo, championCount).sorted {$0.0 > $1.0}
                        championCountNo = combined.map {$0.0}
                        championCount = combined.map {$0.1}
                        
                    }
                    match.append(jsonData)
                }
            }
            else {
                return
            }
            
        }.resume()
    }
    
}
