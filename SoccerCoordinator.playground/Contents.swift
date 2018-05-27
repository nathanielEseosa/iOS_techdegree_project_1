// All 18 players
let player1: [String: Any] = ["name": "Joe Smith", "height": 42.0, "hasExperience": true , "guardianName": "Jim and Jan Smith"]
let player2: [String: Any] = ["name": "Jill Tanner", "height": 36.0 ,"hasExperience": true ,"guardianName": "Clara Tanner"]
let player3: [String: Any] = ["name": "Bill Bon", "height": 43.0 ,"hasExperience": true ,"guardianName": "Sara and Jenny Bon"]
let player4: [String: Any] = ["name": "Eva Gordon", "height": 45.0 ,"hasExperience": false ,"guardianName": "Wendy and Mike Gordon"]
let player5: [String: Any] = ["name": "Matt Gill", "height": 40.0,"hasExperience": false ,"guardianName": "Charles and Sylvia Gill"]
let player6: [String: Any] = ["name": "Kimmy Stein", "height": 41.0,"hasExperience": false ,"guardianName": "Bill and Hillary Stein"]
let player7: [String: Any] = ["name": "Sammy Adams", "hasExperience": false ,"guardianName": "Jeff Adams"]
let player8: [String: Any] = ["name": "Karl Saygan", "height": 42.0 ,"hasExperience": true ,"guardianName": "Heather Bledsoe"]
let player9: [String: Any] = ["name": "Suzane Greenberg", "height": 44.0 ,"hasExperience": true ,"guardianName": "Henrietta Dumas"]
let player10: [String: Any] = ["name": "Sal Dali", "height": 41.0 ,"hasExperience": false ,"guardianName": "Gala Dali"]
let player11: [String: Any] = ["name": "Joe Kavalier", "height": 39.0 ,"hasExperience": false ,"guardianName": "Sam and Elaine Kavalier"]
let player12: [String: Any] = ["name": "Ben Finkelstein", "height": 44.0 ,"hasExperience":false ,"guardianName": "Aaron and Jill Finkelstein"]
let player13: [String: Any] = ["name": "Diego Soto", "height": 41.0 ,"hasExperience": true ,"guardianName": "Robin and Sarika Soto"]
let player14: [String: Any] = ["name": "Chloe Alaska", "height": 47.0 ,"hasExperience": false ,"guardianName": "David and Jamie Alaska"]
let player15: [String: Any] = ["name": "Arnold Willis", "height": 43.0 ,"hasExperience": false ,"guardianName": "Claire Willis"]
let player16: [String: Any] = ["name": "Phillip Helm", "height": 44.0, "hasExperience": true ,"guardianName": "Thomas Helm and Eva Jones"]
let player17: [String: Any] = ["name": "Les Clay", "height": 42.0 ,"hasExperience": true ,"guardianName": "Wynonna Brown"]
let player18: [String: Any] = ["name": "Herschel Krustofski", "height": 45.0 ,"hasExperience": true ,"guardianName": "Hyman and Rachel Krustofski"]

// Players expeerience groups
var experiencedPlayersList = [[String:Any]]()
var inexperiencedPlayersList = [[String:Any]]()


// The teams
var teamDragons = [[String:Any]]()
var teamSharks = [[String:Any]]()
var teamRaptors = [[String:Any]]()

// The league
let theLeague = [teamDragons, teamSharks, teamRaptors]

// Practice date and time
let practiceDateAndTimeDragons = "March 17, 1pm"
let practiceDateAndTimeSharks = "March 17, 3pm"
let practiceDateAndTimeRaptors = "March 18, 1pm"


// An array of dictionaries that hold all players
var players: [[String:Any]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]


/* A loop that iterate through the players collection and​ ​check​ ​each​ ​player’s​ ​experience​ ​level.
   If​ ​a​ ​player​ ​is​ ​experienced,​ the​ ​player will be​ ​added to​ ​the​ ​experienced​ ​collection.
   If​ ​a​ ​player​ ​is​ ​inexperienced,​ the​ ​player​ ​will be added to​ ​the​ ​inexperiencedcollection.
*/
for player in players{
    if let hasExperience = player["hasExperience"] as? Bool{
        if hasExperience == true {
            experiencedPlayersList.append(player)
        } else {
            inexperiencedPlayersList.append(player)
        }
    }
}

// Max players per team
var maxExperiencedPlayersPerTeam = experiencedPlayersList.count / theLeague.count

// Total players per team
var totalPlayersPerTeam = players.count / theLeague.count

// A loop that iterate​ ​through​ ​the​ ​experienced​ ​collection and​ ​assign​ ​players​ ​alternately​ ​to​ ​each​ ​of​ ​the​ ​3​ ​teams
for expieriencedPlayer in experiencedPlayersList{
    if teamDragons.count < maxExperiencedPlayersPerTeam {
        teamDragons.append(expieriencedPlayer)
    } else if teamSharks.count < maxExperiencedPlayersPerTeam {
        teamSharks.append(expieriencedPlayer)
    } else if teamRaptors.count < maxExperiencedPlayersPerTeam {
        teamRaptors.append(expieriencedPlayer)
    }
}

// A loop that iterate​ ​through​ ​the​ ​inexperienced​ ​collection and​ ​assign​ ​players​ ​alternately​ ​to​ ​each​ ​of​ ​the​ ​3​ ​teams
for inExpieriencedPlayer in inexperiencedPlayersList{
    if teamDragons.count < totalPlayersPerTeam {
        teamDragons.append(inExpieriencedPlayer)
    } else if teamSharks.count < totalPlayersPerTeam {
        teamSharks.append(inExpieriencedPlayer)
    } else if teamRaptors.count < totalPlayersPerTeam {
        teamRaptors.append(inExpieriencedPlayer)
    }
}

// Guardian letters
var letters = [String]()


// These loops iterates through all three teams of players and generates a personalized letter to the guardians.
for players in teamDragons{
    if let player = players["name"]{
        if let guradian = players["guardianName"] {
            letters.append("Dear \(guradian). \(player) is on team Raptors and their first practice is on \(practiceDateAndTimeDragons).")
        }
    }
}


for players in teamSharks{
    if let player = players["name"]{
        if let guradian = players["guardianName"] {
            letters.append("Dear \(guradian). \(player) is on team Raptors and their first practice is on \(practiceDateAndTimeDragons).")
        }
    }
}


for players in teamRaptors{
    if let player = players["name"]{
        if let guradian = players["guardianName"] {
            letters.append("Dear \(guradian). \(player) is on team Raptors and their first practice is on \(practiceDateAndTimeDragons).")
        }
    }
}

// Printing the guardian letters
for letter in letters{
    print(letter)
}

