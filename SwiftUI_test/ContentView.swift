//
//  ContentView.swift
//  SwiftUI_test
//
//  Created by Jan Vaculik on 07.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    var championCode = [
                        266: "Aatrox",
                        103: "Ahri",
                         84: "Akali",
                         12: "Alistar",
                         32: "Amumu",
                         34: "Anivia",
                          1: "Annie",
                        523: "Aphelios",
                         22: "Ashe",
                        136: "Aurelion Sol",
                        268: "Azir",
                        432: "Bard",
                         53: "Blitzcrank",
                         63: "Brand",
                        201: "Braum",
                         51: "Caitlyn",
                        164: "Camille",
                         69: "Cassiopeia",
                         31: "Cho'Gath",
                         42: "Corki",
                        122: "Darius",
                        131: "Diana",
                        119: "Draven",
                         36: "Dr. Mundo",
                        245: "Ekko",
                         60: "Elise",
                         28: "Evelynn",
                         81: "Ezreal",
                          9: "Fiddlesticks",
                        114: "Fiora",
                        105: "Fizz",
                          3: "Galio",
                         41: "Gangplank",
                         86: "Garen",
                        150: "Gnar",
                         79: "Gragas",
                        104: "Graves",
                        120: "Hecarim",
                        74: "Heimerdinger",
                        420: "Illaoi",
                        39: "Irelia",
                        427: "Ivern",
                        40: "Janna",
                        59: "Jarvan IV",
                        24: "Jax",
                        126: "Jayce",
                        202: "Jhin",
                        222: "Jinx",
                        145: "Kai'Sa",
                        429: "Kalista",
                         43: "Karma",
                         30: "Karthus",
                         38: "Kassadin",
                         55: "Katarina",
                         10: "Kayle",
                        141: "Kayn",
                         85: "Kennen",
                        121: "Kha'Zix",
                        203: "Kindred",
                        240: "Kled",
                         96: "Kog'Maw",
                          7: "LeBlanc",
                         64: "Lee Sin",
                         89: "Leona",
                        876: "Lillia",
                        127: "Lissandra",
                        236: "Lucian",
                        117: "Lulu",
                         99: "Lux",
                         54: "Malphite",
                         90: "Malzahar",
                         57: "Maokai",
                         11: "Master Yi",
                         21: "Miss Fortune",
                         62: "Wukong",
                         82: "Mordekaiser",
                         25: "Morgana",
                        267: "Nami",
                         75: "Nasus",
                        111: "Nautilus",
                        518: "Neeko",
                         76: "Nidalee",
                         56: "Nocturne",
                         20: "Nunu",
                          2: "Olaf",
                         61: "Orianna",
                        516: "Ornn",
                         80: "Pantheon",
                         78: "Poppy",
                        555: "Pyke",
                        246: "Qiyana",
                        133: "Quinn",
                        497: "Rakan",
                         33: "Rammus",
                        421: "Rek'Sai",
                        526: "Rell",
                         58: "Renekton",
                        107: "Rengar",
                         92: "Riven",
                         68: "Rumble",
                         13: "Ryze",
                        360: "Samira",
                        113: "Sejuani",
                        235: "Senna",
                        147: "Seraphine",
                        875: "Sett",
                         35: "Shaco",
                         98: "Shen",
                        102: "Shyvana",
                         27: "Singed",
                         14: "Sion",
                         15: "Sivir",
                         72: "Skarner",
                         37: "Sona",
                         16: "Soraka",
                         50: "Swain",
                        517: "Sylas",
                        134: "Syndra",
                        223: "Tahm Kench",
                        163: "Taliyah",
                         91: "Talon",
                         44: "Taric",
                         17: "Teemo",
                        412: "Thresh",
                         18: "Tristana",
                         48: "Trundle",
                         23: "Tryndamere",
                          4: "Twisted Fate",
                         29: "Twitch",
                         77: "Udyr",
                          6: "Urgot",
                        110: "Varus",
                         67: "Vayne",
                         45: "Veigar",
                        161: "Vel'Koz",
                        254: "Vi",
                        234: "Viego",
                        112: "Viktor",
                          8: "Vladimir",
                        106: "Volibear",
                         19: "Warwick",
                        498: "Xayah",
                        101: "Xerath",
                          5: "Xin Zhao",
                        157: "Yasuo",
                        777: "Yone",
                         83: "Yorick",
                        350: "Yuumi",
                        154: "Zac",
                        238: "Zed",
                        115: "Ziggs",
                         26: "Zilean",
                        142: "Zoe",
                        143: "Zyra"
                        ]
    
    @State var championCount = [
                                266,
                                103,
                                 84,
                                 12,
                                 32,
                                 34,
                                  1,
                                523,
                                 22,
                                136,
                                268,
                                432,
                                 53,
                                 63,
                                201,
                                 51,
                                164,
                                 69,
                                 31,
                                 42,
                                122,
                                131,
                                119,
                                 36,
                                245,
                                 60,
                                 28,
                                 81,
                                  9,
                                114,
                                105,
                                  3,
                                 41,
                                 86,
                                150,
                                 79,
                                104,
                                120,
                                 74,
                                420,
                                 39,
                                427,
                                 40,
                                 59,
                                 24,
                                126,
                                202,
                                222,
                                145,
                                429,
                                 43,
                                 30,
                                 38,
                                 55,
                                 10,
                                141,
                                 85,
                                121,
                                203,
                                240,
                                 96,
                                  7,
                                 64,
                                 89,
                                876,
                                127,
                                236,
                                117,
                                 99,
                                 54,
                                 90,
                                 57,
                                 11,
                                 21,
                                 62,
                                 82,
                                 25,
                                267,
                                 75,
                                111,
                                518,
                                 76,
                                 56,
                                 20,
                                  2,
                                 61,
                                516,
                                 80,
                                 78,
                                555,
                                246,
                                133,
                                497,
                                 33,
                                421,
                                526,
                                 58,
                                107,
                                 92,
                                 68,
                                 13,
                                360,
                                113,
                                235,
                                147,
                                875,
                                 35,
                                 98,
                                102,
                                 27,
                                 14,
                                 15,
                                 72,
                                 37,
                                 16,
                                 50,
                                517,
                                134,
                                223,
                                163,
                                 91,
                                 44,
                                 17,
                                412,
                                 18,
                                 48,
                                 23,
                                  4,
                                 29,
                                 77,
                                  6,
                                110,
                                 67,
                                 45,
                                161,
                                254,
                                234,
                                112,
                                  8,
                                106,
                                 19,
                                498,
                                101,
                                  5,
                                157,
                                777,
                                 83,
                                350,
                                154,
                                238,
                                115,
                                 26,
                                142,
                                143,
                                999
                        ]
    @State var championCountNo = [
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0,
                                 0
                                ]
    
    @State var summoner : ProfileInfo? = nil
    @State var profile : [SummonerProfile] = []
    @State var match : [MatchInfo] = []
    var summonerName : String
    var shard : String
    let apiKey = "RGAPI-b276ec77-cded-4e6c-a73c-dd24b0e6878a"
    
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
                            Image(championCode[championCount[1]]!)
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
                            Image(championCode[championCount[2]]!)
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
                            Image(championCode[championCount[3]]!)
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
                            Image(championCode[championCount[4]]!)
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
                            Image(championCode[championCount[5]]!)
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
            
            
            
            
            /*
            if (match.count > 9) {
                ForEach(match, id: \.self) { page in
                    if(page.matches.count != 0) {
                    }
                }
            } */
            
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

extension String {
    var isAlphanumeric: Bool {
        return !isEmpty && range(of: "[^a-zA-Z0-9-\\s]", options: .regularExpression) == nil
    }
}
