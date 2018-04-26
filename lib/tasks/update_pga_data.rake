namespace :update_pga_data do
  desc 'Update database with most recent PGA Tour data'
  task fetch_players: :environment do
    require 'nokogiri'
    require 'open-uri'

    url = 'http://www.espn.com/golf/leaderboard?tournamentId=401025221'
    doc = Nokogiri::HTML(open(url))

    tournament_name = doc.xpath('//*[@id="main-container"]/div/section[1]/header/div[2]/div/h1')
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

    puts player_data
  end
end
