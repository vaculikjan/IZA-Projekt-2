//
//  HistoryView.swift
//  SwiftUI_test
//
//  Created by Jan Vaculik on 05.05.2021.
//

import SwiftUI

struct HistoryView: View {
    
    @State var matchHistory : MatchInfo? = nil
    @State var summonerName : String = ""
    @State var apiKey : String = ""
    @State var shard : String = ""
    @State var counter = 0
    @State var queueType : Int = 0
    
    @State var matches : [Match] = []
    var champions = Champion()

    
    var body: some View {
        ScrollView{
            LazyVStack{
                if (matches.count > 14) {
                    ForEach(matches, id: \.id) { match in
                        ForEach(match.participantIdentities, id: \.id) { identity in
                            if (identity.player.summonerName == summonerName) {
                                ForEach(match.participants, id: \.id) { participant in
                                    if (identity.participantId == participant.participantId && match.queueId == queueType) {
                                        
                                        if (participant.stats.win) {
                                            HStack{
                                                
                                                Image(champions.championCode[participant.championId]!)
                                                .resizable()
                                                .frame(width: 50.0, height: 50.0)
                                                .clipShape(Circle())
                                                    .padding(.trailing, 50)
                                                    .padding(.leading, 10)
                                                
                                                Text("\(String(participant.stats.kills))/\(String(participant.stats.deaths))/\(String(participant.stats.assists))")
                                                .frame(width: 60, alignment: .leading)

                                                Text("Win")
                                                .font(.headline)
                                                .frame(width: 70, alignment: .leading)
                                                
                                            }.background(
                                                Rectangle()
                                                .fill(Color.green)
                                                .frame(width: 1000, height: 65)
                                            )
                                            .padding(.bottom, 10)
                                        }
                                        else {
                                            HStack{
                                                
                                                Image(champions.championCode[participant.championId]!)
                                                .resizable()
                                                .frame(width: 50.0, height: 50.0)
                                                .clipShape(Circle())
                                                .padding(.trailing, 50)
                                                .padding(.leading, 10)
                                                
                                                Text("\(String(participant.stats.kills))/\(String(participant.stats.deaths))/\(String(participant.stats.assists))")
                                                .frame(width: 60, alignment: .leading)

                                                Text("Lose")
                                                .font(.headline)
                                                .frame(width: 70, alignment: .leading)

                                            }.background(
                                                Rectangle()
                                                .fill(Color.red)
                                                .frame(width: 1000, height: 65)
                                            )
                                            .padding(.bottom, 10)
                                            .navigationBarTitle("Match History")
                                        }
                                    }
                                }
                            }
                        }
                    }
                    HStack{
                    }.onAppear(perform : getMatches)
                }
                else {
                    Text("Loading matches").fontWeight(.bold)
                }
            }.onAppear(perform : getMatches)
        }
    }
    
    func getMatches() -> Void {
                
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
        
        for i in 0...14 {
            var matchId = 0
            if ((matchHistory?.matches.count)! > i + counter) {
                matchId = (matchHistory?.matches[i + counter].gameId)!
            }
            else {
                return
            }
            let url = URL(string: "https://\(shardCh).api.riotgames.com/lol/match/v4/matches/\(String(matchId))?api_key=\(apiKey)")!
            let request = URLRequest(url: url)
            URLSession.shared.dataTask(with: request) { data, _, _ in
                
                if data != nil {
                    let jsonData : Match
                    do {
                        jsonData = try JSONDecoder().decode(Match.self, from: data!)
                    }
                    catch {
                        print("Didn't load match")
                        return
                    }
                    DispatchQueue.main.async {
                        if (!matches.contains{$0.gameCreation == jsonData.gameCreation}) {
                            matches.append(jsonData)
                        }
                        matches = matches.sorted(by: { $0.gameCreation > $1.gameCreation })
                    }
                }
            }.resume()
        }
        counter += 15
    }
}
