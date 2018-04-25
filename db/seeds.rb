require 'database_cleaner'
DatabaseCleaner.clean_with(:truncation)

User.create(email: "edward@test.com", password: "password")
User.create(email: "jacob@test.com", password: "password")

player_list = [
  "J.J. Spaun",
  "Chris Kirk",
  "Zach Johnson",
  "Brian Gay",
  "Sean O'Hair",
  "Matt Kuchar",
  "Hideki Matsuyama",
  "Tom Hoge",
  "Ollie Schniederjans",
  "Grayson Murray",
  "Kevin Na",
  "Tommy Fleetwood",
  "Byeong Hun An",
  "Russell Henley",
  "Bud Cauley",
  "Trey Mullinax",
  "Daniel Berger",
  "Tyrrell Hatton",
  "Brice Garnett",
  "Jason Kokrak",
  "Branden Grace",
  "Jamie Lovemark",
  "Brandon Harkins",
  "Alex Cejka",
  "Scott Stallings",
  "Charley Hoffman",
  "Patrick Rodgers",
  "Peter Uihlein",
  "Brian Stuard",
  "Keith Mitchell",
  "Sergio Garcia",
  "Brooks Koepka",
  "Ryan Palmer",
  "Martin Piller",
  "Lucas Glover",
  "Jhonattan Vegas",
  "Anirban Lahiri",
  "Jimmy Walker",
  "Scott Brown",
  "Abraham Ancer",
  "Russell Knox",
  "John Huh",
  "Scott Piercy",
  "Martin Laird",
  "Sung-hoon Kang",
  "Vaughn Taylor",
  "Harris English",
  "Louis Oosthuizen",
  "Rory Sabbatini",
  "Kelly Kraft"
]

player_list.each do |full_name|
  Player.create(full_name: full_name)
end

tournament_list = [
  ["The Players", 2018],
  ["Memorial Tournament", 2018],
  ["US Open", 2018]
]

tournament_list.each do |tournament_name, tournament_year|
  Tournament.create(tournament_name: tournament_name, tournament_year: tournament_year)
end

player_tournament_list = [
  [1, 1, 75],
  [2, 2, 70],
  [10, 25, 25]
]

player_tournament_list.each do |player_id, tournament_id, round_1|
  PlayerTournament.create(player_id: player_id, tournament_id: tournament_id, round_1: round_1)
end

team_list = [
  [1, "Team Edward", 1],
  [2, "Team Jacob", 1]
]

team_list.each do |user_id, team_name, tournament_id|
  Team.create(user_id: user_id, team_name: team_name, tournament_id: tournament_id)
end

team_player_list = [
  [1, 10, 1],
  [1, 9, 2],
  [1, 8, 3],
  [1, 7, 4],
  [1, 6, 5],
  [1, 5, 6],
  [1, 4, 7],
  [1, 3, 8],
  [1, 2, 9],
  [1, 1, 10],
  [2, 1, 1],
  [2, 2, 2],
  [2, 3, 3],
  [2, 4, 4],
  [2, 5, 5],
  [2, 6, 6],
  [2, 7, 7],
  [2, 8, 8],
  [2, 9, 9],
  [2, 10, 10]
]

team_player_list.each do |team_id, player_id, position|
  TeamPlayer.create(team_id: team_id, player_id: player_id, position: position)
end
