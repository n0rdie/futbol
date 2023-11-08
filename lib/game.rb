class Game
    attr_reader :game_id, :season, :type, :date_time, :away_team_id, :home_team_id, :away_goals, :home_goals, :venue, :venue_link#, :array
    
    def initialize#(game_id, season, type, date_time, away_team_id, home_team_id, away_goals, home_goals, venue, venue_link)
        @game_id = []
        @season = []
        @type = []
        @date_time = []
        @away_team_id = []
        @home_team_id = []
        @away_goals = []
        @home_goals = []
        @venue = []
        @venue_link = []
    end

    def array_fill
        
        @array = []
        
        CSV.foreach('./data/games.csv', headers: true, header_converters: :symbol) do |row|
            game = Game.new(
            game_id = row[:game_id],
            season = row[:season],
            type = row[:type],
            date_time = row[:date_time],
            away_team_id = row[:away_team_id],
            home_team_id = row[:home_team_id],
            away_goals = row[:away_goals],
            home_goals = row[:home_goals],
            venue = row[:venue],
            venue_link = row[:venue_link]
            )
            @array << game
        end
    end
end

#     def array_fill
        
#         @array = []
        
#         CSV.foreach('./data/games.csv', headers: true, header_converters: :symbol) do |row|
#             game = Game.new
#             game_id << row[:game_id]
#             season << row[:season]
#             type << row[:type]
#             date_time << row[:date_time]
#             away_team_id << row[:away_team_id]
#             home_team_id << row[:home_team_id]
#             away_goals << row[:away_goals]
#             home_goals << row[:home_goals]
#             venue << row[:venue]
#             venue_link << row[:venue_link]
#             @array << game
#         end
#     end
# end

#     def array_fill

#         @array = []

#         CSV.foreach('./data/games.csv', headers: true, header_converters: :symbol) do |row|
#             game = Game.new
#             game.game_id = row[:game_id]
#             game.season = row[:season]
#             game.type = row[:type]
#             game.date_time = row[:date_time]
#             game.away_team_id = row[:away_team_id]
#             game.home_team_id = row[:home_team_id]
#             game.away_goals = row[:away_goals]
#             game.home_goals = row[:home_goals]
#             game.venue = row[:venue]
#             game.venue_link = row[:venue_link]
#             @array << game
#         end
#     end
# end


    
#     def initialize(details)
#         @game_id = details[:game_id]
#         @season = details[:season]
#         @type = details[:type]
#         @date_time = details[:date_time]
#         @away_team_id = details[:away_team_id]
#         @home_team_id = details[:home_team_id]
#         @away_goals = details[:away_goals]
#         @home_goals = details[:home_goals]
#         @venue = details[:venue]
#         @venue_link = details[:venue_link]
#         # @array = []
#     end

#     def array_fill

#         @array = []

#         CSV.foreach('./data/games.csv', headers: true, header_converters: :symbol) do |row|
#             details = {
#               game_id: row[:game_id],
#               season: row[:season],
#               type: row[:type],
#               date_time: row[:date_time],
#               away_team_id: row[:away_team_id],
#               home_team_id: row[:home_team_id],
#               away_goals: row[:away_goals],
#               home_goals: row[:home_goals],
#               venue: row[:venue],
#               venue_link: row[:venue_link]
#             }
#             game = Game.new#(details)
#             @array << game
#         end
#     end
# end

    
    # def initialize(game_id, season, type, date_time, away_team_id, home_team_id, away_goals, home_goals, venue, venue_link)
    #     @game_id = game_id
    #     @season = season
    #     @type = type
    #     @date_time = date_time
    #     @away_team_id = away_team_id
    #     @home_team_id = home_team_id
    #     @away_goals = away_goals
    #     @home_goals = home_goals
    #     @venue = venue
    #     @venue_link = venue_link
    #     @array = []
    # end

#     def array_fill

#         @array = []

#         CSV.foreach('./data/games.csv', headers: true, header_converters: :symbol) do |row|
#             game = Game.new(
#             row[:game_id],#.to_i
#             row[:season],#.to_i
#             row[:type],#.to_s
#             row[:date_time],#.to_s
#             row[:away_team_id],#.to_i
#             row[:home_team_id],#.to_i
#             row[:away_goals],#.to_i
#             row[:home_goals],#.to_i
#             row[:venue],#.to_s
#             row[:venue_link],#.to_s
#             )
#         #require 'pry'; binding.pry
#         @array.append(game)
#         end
#     end
# end



#     def array_fill

#         @array = []

#         CSV.foreach('./data/games.csv', headers: true, header_converters: :symbol) do |row|
#             game_id = row[:game_id]#.to_i
#             season = row[:season]#.to_i
#             type = row[:type]#.to_s
#             date_time = row[:date_time]#.to_s
#             away_team_id = row[:away_team_id]#.to_i
#             home_team_id = row[:home_team_id]#.to_i
#             away_goals = row[:away_goals]#.to_i
#             home_goals = row[:home_goals]#.to_i
#             venue = row[:venue]#.to_s
#             venue_link = row[:venue_link]#.to_s
#         end
#         require 'pry'; binding.pry
#         @array.append
#     end
# end