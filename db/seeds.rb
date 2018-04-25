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
  [ "The Players", 2018 ],
  [ "Memorial Tournament", 2018 ],
  [ "US Open", 2018 ]
]

tournament_list.each do |tournament_name, tournament_year|
  Tournament.create(tournament_name: tournament_name, tournament_year: tournament_year)
end

PlayerTournament.create(player_id: 1, tournament_id: 1, round_1: 75)
