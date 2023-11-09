require 'CSV'
require './lib/game_list'

class GameList
    attr_reader :list, :path

    def initialize(path)#(one,two,three,four,five,six,seven,eight,nine,ten)
        '''p one
        p two
        p three
        p four
        p five
        p six
        p seven
        p eight
        p nine
        p ten'''
        @path = path
        @list = []
        list_fill
        p @list
    end

    def list_fill
        CSV.foreach(@path, headers: true, header_converters: :symbol) do |row|
            game_id = row[:game_id].to_i
            season = row[:season].to_i
            type = row[:type].to_s
            date_time = row[:date_time].to_s
            away_team_id = row[:away_team_id].to_i
            home_team_id = row[:home_team_id].to_i
            away_goals = row[:away_goals].to_i
            home_goals = row[:home_goals].to_i
            venue = row[:venue].to_s
            venue_link = row[:venue_link].to_s
        
            new_game_list = GameList.new(game_id, season, type, date_time, away_team_id, home_team_id, away_goals, home_goals, venue, venue_link)
        
            @list.append(new_game_list)
        end
    end

    def highest_total_score
        highest_score_so_far = 0
        @list.each do |game|
            if game.away_goals + game.home_goals > highest_score_so_far
                highest_score_so_far = game.away_goals + game.home_goals
            end
        end
        highest_score_so_far
    end
end