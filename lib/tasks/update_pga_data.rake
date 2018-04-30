namespace :update_pga_data do
  desc 'Update database with most recent PGA Tour data'
  task fetch_players: :environment do
    require 'nokogiri'
    require 'open-uri'

    # Arnold Palmer Invitational presented by Mastercard - 3750
    # Houston Open - 3756
    # 2018 Masters - 401025221
    # RBC Heritage - 401025246
    # Valero Texas Open - 401025247

    espn_tournaments = [3750, 3756, 401025221, 401025246, 401025247]

    espn_tournaments.each do |tournament_id|
      url = "http://www.espn.com/golf/leaderboard?tournamentId=#{tournament_id}"
      doc = Nokogiri::HTML(open(url))
      tournament_name = doc.xpath('//*[@id="main-container"]/div/section[1]/header/div[2]/div/h1').text
      names = []
      round_1 = []
      round_2 = []
      round_3 = []
      round_4 = []
      to_par = []

      doc.css('a.full-name').each do |name|
        names.push(name.text)
      end
      doc.css('td.round1.in.post').each do |r1|
        round_1.push(r1.text)
      end
      doc.css('td.round2.in.post').each do |r2|
        round_2.push(r2.text)
      end
      doc.css('td.round3.in.post').each do |r3|
        round_3.push(r3.text)
      end
      doc.css('td.round4.in.post').each do |r4|
        round_4.push(r4.text)
      end
      doc.css('td.relativeScore.sm.asc.in.post').each do |tp|
        to_par.push(tp.text)
      end

      player_data = names.zip(round_1, round_2, round_3, round_4, to_par)

      tournament = Tournament.where(tournament_name: tournament_name).first_or_initialize
      tournament.save

      player_data.each do |i|
        player = Player.where(full_name: i[0]).first_or_initialize
        player.save
        player_tournament = PlayerTournament.where('player_id = ? AND tournament_id = ?', player.id, tournament.id).first_or_initialize
        player_tournament.player_id = player.id
        player_tournament.tournament_id = tournament.id
        player_tournament.round_1 = i[1]
        player_tournament.round_2 = i[2]
        player_tournament.round_3 = i[3]
        player_tournament.round_4 = i[4]
        player_tournament.to_par = i[5]
        player_tournament.save(:validate => false)
      end
    end
  end
end
