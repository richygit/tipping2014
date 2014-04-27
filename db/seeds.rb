Group.create!([
  {id: 1, name: "A"},
  {id: 2, name: "B"},
  {id: 3, name: "C"},
  {id: 4, name: "D"},
  {id: 5, name: "E"},
  {id: 6, name: "F"},
  {id: 7, name: "G"},
  {id: 8, name: "H"}
])
Match.create!([
  {id: 1, kickoff: "2014-06-12 17:00:00", team1_id: 1, team2_id: 2, venue_id: 12, stage: "G"},
  {id: 2, kickoff: "2014-06-13 13:00:00", team1_id: 3, team2_id: 4, venue_id: 7, stage: "G"},
  {id: 3, kickoff: "2014-06-13 16:00:00", team1_id: 5, team2_id: 6, venue_id: 11, stage: "G"},
  {id: 4, kickoff: "2014-06-13 18:00:00", team1_id: 7, team2_id: 8, venue_id: 3, stage: "G"},
  {id: 5, kickoff: "2014-06-14 13:00:00", team1_id: 9, team2_id: 10, venue_id: 1, stage: "G"},
  {id: 6, kickoff: "2014-06-14 22:00:00", team1_id: 11, team2_id: 12, venue_id: 9, stage: "G"},
  {id: 7, kickoff: "2014-06-14 16:00:00", team1_id: 13, team2_id: 14, venue_id: 5, stage: "G"},
  {id: 8, kickoff: "2014-06-14 18:00:00", team1_id: 15, team2_id: 16, venue_id: 6, stage: "G"},
  {id: 9, kickoff: "2014-06-15 13:00:00", team1_id: 17, team2_id: 18, venue_id: 2, stage: "G"},
  {id: 10, kickoff: "2014-06-15 16:00:00", team1_id: 19, team2_id: 20, venue_id: 8, stage: "G"},
  {id: 11, kickoff: "2014-06-15 19:00:00", team1_id: 21, team2_id: 22, venue_id: 10, stage: "G"},
  {id: 12, kickoff: "2014-06-16 16:00:00", team1_id: 23, team2_id: 24, venue_id: 4, stage: "G"},
  {id: 13, kickoff: "2014-06-16 13:00:00", team1_id: 25, team2_id: 26, venue_id: 11, stage: "G"},
  {id: 14, kickoff: "2014-06-16 19:00:00", team1_id: 27, team2_id: 28, venue_id: 7, stage: "G"},
  {id: 15, kickoff: "2014-06-17 13:00:00", team1_id: 29, team2_id: 30, venue_id: 1, stage: "G"},
  {id: 16, kickoff: "2014-06-17 18:00:00", team1_id: 31, team2_id: 32, venue_id: 3, stage: "G"},
  {id: 17, kickoff: "2014-06-17 16:00:00", team1_id: 1, team2_id: 3, venue_id: 5, stage: "G"},
  {id: 18, kickoff: "2014-06-18 18:00:00", team1_id: 4, team2_id: 2, venue_id: 6, stage: "G"},
  {id: 19, kickoff: "2014-06-18 16:00:00", team1_id: 5, team2_id: 7, venue_id: 10, stage: "G"},
  {id: 20, kickoff: "2014-06-18 13:00:00", team1_id: 8, team2_id: 6, venue_id: 8, stage: "G"},
  {id: 21, kickoff: "2014-06-19 13:00:00", team1_id: 9, team2_id: 11, venue_id: 2, stage: "G"},
  {id: 22, kickoff: "2014-06-19 19:00:00", team1_id: 12, team2_id: 10, venue_id: 7, stage: "G"},
  {id: 23, kickoff: "2014-06-19 16:00:00", team1_id: 13, team2_id: 15, venue_id: 12, stage: "G"},
  {id: 24, kickoff: "2014-06-20 13:00:00", team1_id: 16, team2_id: 14, venue_id: 9, stage: "G"},
  {id: 25, kickoff: "2014-06-20 16:00:00", team1_id: 17, team2_id: 19, venue_id: 11, stage: "G"},
  {id: 26, kickoff: "2014-06-20 19:00:00", team1_id: 20, team2_id: 18, venue_id: 4, stage: "G"},
  {id: 27, kickoff: "2014-06-21 13:00:00", team1_id: 21, team2_id: 23, venue_id: 1, stage: "G"},
  {id: 28, kickoff: "2014-06-21 18:00:00", team1_id: 24, team2_id: 22, venue_id: 3, stage: "G"},
  {id: 29, kickoff: "2014-06-21 16:00:00", team1_id: 25, team2_id: 27, venue_id: 5, stage: "G"},
  {id: 30, kickoff: "2014-06-22 18:00:00", team1_id: 28, team2_id: 26, venue_id: 6, stage: "G"},
  {id: 31, kickoff: "2014-06-22 13:00:00", team1_id: 29, team2_id: 31, venue_id: 10, stage: "G"},
  {id: 32, kickoff: "2014-06-22 16:00:00", team1_id: 32, team2_id: 30, venue_id: 8, stage: "G"},
  {id: 33, kickoff: "2014-06-23 17:00:00", team1_id: 4, team2_id: 1, venue_id: 2, stage: "G"},
  {id: 34, kickoff: "2014-06-23 17:00:00", team1_id: 2, team2_id: 3, venue_id: 9, stage: "G"},
  {id: 35, kickoff: "2014-06-23 13:00:00", team1_id: 8, team2_id: 5, venue_id: 4, stage: "G"},
  {id: 36, kickoff: "2014-06-23 13:00:00", team1_id: 6, team2_id: 7, venue_id: 12, stage: "G"},
  {id: 37, kickoff: "2014-06-24 16:00:00", team1_id: 12, team2_id: 9, venue_id: 3, stage: "G"},
  {id: 38, kickoff: "2014-06-24 16:00:00", team1_id: 10, team2_id: 11, venue_id: 5, stage: "G"},
  {id: 39, kickoff: "2014-06-24 13:00:00", team1_id: 16, team2_id: 13, venue_id: 7, stage: "G"},
  {id: 40, kickoff: "2014-06-24 13:00:00", team1_id: 14, team2_id: 15, venue_id: 1, stage: "G"},
  {id: 41, kickoff: "2014-06-25 16:00:00", team1_id: 20, team2_id: 17, venue_id: 6, stage: "G"},
  {id: 42, kickoff: "2014-06-25 17:00:00", team1_id: 18, team2_id: 19, venue_id: 10, stage: "G"},
  {id: 43, kickoff: "2014-06-25 13:00:00", team1_id: 24, team2_id: 21, venue_id: 8, stage: "G"},
  {id: 44, kickoff: "2014-06-25 13:00:00", team1_id: 22, team2_id: 23, venue_id: 11, stage: "G"},
  {id: 45, kickoff: "2014-06-26 13:00:00", team1_id: 28, team2_id: 25, venue_id: 9, stage: "G"},
  {id: 46, kickoff: "2014-06-26 13:00:00", team1_id: 26, team2_id: 27, venue_id: 2, stage: "G"},
  {id: 47, kickoff: "2014-06-26 17:00:00", team1_id: 32, team2_id: 29, venue_id: 12, stage: "G"},
  {id: 48, kickoff: "2014-06-26 17:00:00", team1_id: 30, team2_id: 31, venue_id: 4, stage: "G"},
  {id: 49, kickoff: "2014-06-28 13:00:00", team1_id: nil, team2_id: nil, venue_id: 1, stage: "16"},
  {id: 50, kickoff: "2014-06-28 17:00:00", team1_id: nil, team2_id: nil, venue_id: 10, stage: "16"},
  {id: 51, kickoff: "2014-06-29 13:00:00", team1_id: nil, team2_id: nil, venue_id: 5, stage: "16"},
  {id: 52, kickoff: "2014-06-29 17:00:00", team1_id: nil, team2_id: nil, venue_id: 9, stage: "16"},
  {id: 53, kickoff: "2014-06-30 13:00:00", team1_id: nil, team2_id: nil, venue_id: 2, stage: "16"},
  {id: 54, kickoff: "2014-06-30 17:00:00", team1_id: nil, team2_id: nil, venue_id: 8, stage: "16"},
  {id: 55, kickoff: "2014-07-01 13:00:00", team1_id: nil, team2_id: nil, venue_id: 12, stage: "16"},
  {id: 56, kickoff: "2014-07-01 17:00:00", team1_id: nil, team2_id: nil, venue_id: 11, stage: "16"},
  {id: 57, kickoff: "2014-07-04 17:00:00", team1_id: nil, team2_id: nil, venue_id: 5, stage: "QF"},
  {id: 58, kickoff: "2014-07-04 13:00:00", team1_id: nil, team2_id: nil, venue_id: 10, stage: "QF"},
  {id: 59, kickoff: "2014-07-05 17:00:00", team1_id: nil, team2_id: nil, venue_id: 11, stage: "QF"},
  {id: 60, kickoff: "2014-07-05 13:00:00", team1_id: nil, team2_id: nil, venue_id: 2, stage: "QF"},
  {id: 61, kickoff: "2014-07-08 17:00:00", team1_id: nil, team2_id: nil, venue_id: 1, stage: "SF"},
  {id: 62, kickoff: "2014-07-09 17:00:00", team1_id: nil, team2_id: nil, venue_id: 12, stage: "SF"},
  {id: 63, kickoff: "2014-07-12 17:00:00", team1_id: nil, team2_id: nil, venue_id: 2, stage: "3"},
  {id: 64, kickoff: "2014-07-13 17:00:00", team1_id: nil, team2_id: nil, venue_id: 10, stage: "F"}
])
Team.create!([
  {id: 1, name: "Brazil", code: "BRA", group_id: 1},
  {id: 2, name: "Croatia", code: "HRV", group_id: 1},
  {id: 3, name: "Mexico", code: "MEX", group_id: 1},
  {id: 4, name: "Cameroon", code: "CMR", group_id: 1},
  {id: 5, name: "Spain", code: "ESP", group_id: 2},
  {id: 6, name: "Netherlands", code: "NLD", group_id: 2},
  {id: 7, name: "Chile", code: "CHL", group_id: 2},
  {id: 8, name: "Australia", code: "AUS", group_id: 2},
  {id: 9, name: "Colombia", code: "COL", group_id: 3},
  {id: 10, name: "Greece", code: "GRC", group_id: 3},
  {id: 11, name: "Ivory Coast", code: "CIV", group_id: 3},
  {id: 12, name: "Japan", code: "JPN", group_id: 3},
  {id: 13, name: "Uruguay", code: "URY", group_id: 4},
  {id: 14, name: "Costa Rica", code: "CRC", group_id: 4},
  {id: 15, name: "England", code: "ENG", group_id: 4},
  {id: 16, name: "Italy", code: "ITA", group_id: 4},
  {id: 17, name: "Switzerland", code: "CHE", group_id: 5},
  {id: 18, name: "Ecuador", code: "ECU", group_id: 5},
  {id: 19, name: "France", code: "FRA", group_id: 5},
  {id: 20, name: "Honduras", code: "HND", group_id: 5},
  {id: 21, name: "Argentina", code: "ARG", group_id: 6},
  {id: 22, name: "Bosnia and Herzegovina", code: "BIH", group_id: 6},
  {id: 23, name: "Iran", code: "IRN", group_id: 6},
  {id: 24, name: "Nigeria", code: "NGA", group_id: 6},
  {id: 25, name: "Germany", code: "DEU", group_id: 7},
  {id: 26, name: "Portugal", code: "PRT", group_id: 7},
  {id: 27, name: "Ghana", code: "GHA", group_id: 7},
  {id: 28, name: "USA", code: "USA", group_id: 7},
  {id: 29, name: "Belgium", code: "BEL", group_id: 8},
  {id: 30, name: "Algeria", code: "DZA", group_id: 8},
  {id: 31, name: "Russia", code: "RUS", group_id: 8},
  {id: 32, name: "Korea", code: "KOR", group_id: 8},
  {id: 33, name: "Brazil", code: "BRA", group_id: 1},
  {id: 34, name: "Croatia", code: "HRV", group_id: 1},
  {id: 35, name: "Mexico", code: "MEX", group_id: 1},
  {id: 36, name: "Cameroon", code: "CMR", group_id: 1},
  {id: 37, name: "Spain", code: "ESP", group_id: 2},
  {id: 38, name: "Netherlands", code: "NLD", group_id: 2},
  {id: 39, name: "Chile", code: "CHL", group_id: 2},
  {id: 40, name: "Australia", code: "AUS", group_id: 2},
  {id: 41, name: "Colombia", code: "COL", group_id: 3},
  {id: 42, name: "Greece", code: "GRC", group_id: 3},
  {id: 43, name: "Ivory Coast", code: "CIV", group_id: 3},
  {id: 44, name: "Japan", code: "JPN", group_id: 3},
  {id: 45, name: "Uruguay", code: "URY", group_id: 4},
  {id: 46, name: "Costa Rica", code: "CRC", group_id: 4},
  {id: 47, name: "England", code: "ENG", group_id: 4},
  {id: 48, name: "Italy", code: "ITA", group_id: 4},
  {id: 49, name: "Switzerland", code: "CHE", group_id: 5},
  {id: 50, name: "Ecuador", code: "ECU", group_id: 5},
  {id: 51, name: "France", code: "FRA", group_id: 5},
  {id: 52, name: "Honduras", code: "HND", group_id: 5},
  {id: 53, name: "Argentina", code: "ARG", group_id: 6},
  {id: 54, name: "Bosnia and Herzegovina", code: "BIH", group_id: 6},
  {id: 55, name: "Iran", code: "IRN", group_id: 6},
  {id: 56, name: "Nigeria", code: "NGA", group_id: 6},
  {id: 57, name: "Germany", code: "DEU", group_id: 7},
  {id: 58, name: "Portugal", code: "PRT", group_id: 7},
  {id: 59, name: "Ghana", code: "GHA", group_id: 7},
  {id: 60, name: "USA", code: "USA", group_id: 7},
  {id: 61, name: "Belgium", code: "BEL", group_id: 8},
  {id: 62, name: "Algeria", code: "DZA", group_id: 8},
  {id: 63, name: "Russia", code: "RUS", group_id: 8},
  {id: 64, name: "Korea", code: "KOR", group_id: 8},
  {id: 65, name: "Brazil", code: "BRA", group_id: 1},
  {id: 66, name: "Croatia", code: "HRV", group_id: 1},
  {id: 67, name: "Mexico", code: "MEX", group_id: 1},
  {id: 68, name: "Cameroon", code: "CMR", group_id: 1},
  {id: 69, name: "Spain", code: "ESP", group_id: 2},
  {id: 70, name: "Netherlands", code: "NLD", group_id: 2},
  {id: 71, name: "Chile", code: "CHL", group_id: 2},
  {id: 72, name: "Australia", code: "AUS", group_id: 2},
  {id: 73, name: "Colombia", code: "COL", group_id: 3},
  {id: 74, name: "Greece", code: "GRC", group_id: 3},
  {id: 75, name: "Ivory Coast", code: "CIV", group_id: 3},
  {id: 76, name: "Japan", code: "JPN", group_id: 3},
  {id: 77, name: "Uruguay", code: "URY", group_id: 4},
  {id: 78, name: "Costa Rica", code: "CRC", group_id: 4},
  {id: 79, name: "England", code: "ENG", group_id: 4},
  {id: 80, name: "Italy", code: "ITA", group_id: 4},
  {id: 81, name: "Switzerland", code: "CHE", group_id: 5},
  {id: 82, name: "Ecuador", code: "ECU", group_id: 5},
  {id: 83, name: "France", code: "FRA", group_id: 5},
  {id: 84, name: "Honduras", code: "HND", group_id: 5},
  {id: 85, name: "Argentina", code: "ARG", group_id: 6},
  {id: 86, name: "Bosnia and Herzegovina", code: "BIH", group_id: 6},
  {id: 87, name: "Iran", code: "IRN", group_id: 6},
  {id: 88, name: "Nigeria", code: "NGA", group_id: 6},
  {id: 89, name: "Germany", code: "DEU", group_id: 7},
  {id: 90, name: "Portugal", code: "PRT", group_id: 7},
  {id: 91, name: "Ghana", code: "GHA", group_id: 7},
  {id: 92, name: "USA", code: "USA", group_id: 7},
  {id: 93, name: "Belgium", code: "BEL", group_id: 8},
  {id: 94, name: "Algeria", code: "DZA", group_id: 8},
  {id: 95, name: "Russia", code: "RUS", group_id: 8},
  {id: 96, name: "Korea", code: "KOR", group_id: 8}
])
Venue.create!([
  {id: 1, city: "Belo Horizonte", name: "Estadio Mineirao"},
  {id: 2, city: "Brasilia", name: "Estadio Nacional"},
  {id: 3, city: "Cuiaba", name: "Arena Pantanal"},
  {id: 4, city: "Curitiba", name: "Arena da Baixada"},
  {id: 5, city: "Fortaleza", name: "Estadio Castelao"},
  {id: 6, city: "Manaus", name: "Arena Amazonia"},
  {id: 7, city: "Natal", name: "Estadio das Dunas"},
  {id: 8, city: "Porto Alegre", name: "Estadio Beira-Rio"},
  {id: 9, city: "Recife", name: "Arena Pernambuco"},
  {id: 10, city: "Rio De Janeiro", name: "Estadio do Maracana"},
  {id: 11, city: "Salvador", name: "Arena Fonte Nova"},
  {id: 12, city: "Sao Paulo", name: "Arena de Sao Paulo"}
])
