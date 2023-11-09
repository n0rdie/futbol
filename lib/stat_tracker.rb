require 'CSV'
require './lib/team_list'
require './lib/game_list'
require './lib/game_team_list'

class StatTracker
    attr_reader :games, :teams, :game_teams

    def self.from_csv(locations)
        @games = GameList.new(locations[:games])
        @teams = TeamList.new(locations[:teams])
        @game_teams = GameTeamList.new(locations[:game_teams])
    end

    # GAMES
    def highest_total_score #i Highest sum of the winning and losing teams’ scores
        @games.highest_total_score
    end

    def lowest_total_score #i Lowest sum of the winning and losing teams’ scores

    end

    def percentage_home_wins #f Percentage of games that a home team has won (rounded to the nearest 100th)

    end

    def percentage_visitor_wins #f Percentage of games that a visitor has won (rounded to the nearest 100th)

    end

    def percentage_ties #f Percentage of games that has resulted in a tie (rounded to the nearest 100th)

    end

    def count_of_games_by_season #hash A hash with season names (e.g. 20122013) as keys and counts of games as values

    end

    def average_goals_per_game #f Average number of goals scored in a game across all seasons including both home and away goals (rounded to the nearest 100th)

    end

    def average_goals_by_season #hash Average number of goals scored in a game organized in a hash with season names (e.g. 20122013) as keys and a float representing the average number of goals in a game for that season as values (rounded to the nearest 100th)

    end


    # LEAGUE
    def count_of_teams #i Total number of teams in the data.

    end

    def best_offense #s Name of the team with the highest average number of goals scored per game across all seasons.

    end

    def worst_offense #s Name of the team with the lowest average number of goals scored per game across all seasons.

    end

    def highest_scoring_visitor #s Name of the team with the highest average score per game across all seasons when they are away.

    end

    def highest_scoring_home_team #s Name of the team with the highest average score per game across all seasons when they are home.

    end

    def lowest_scoring_visitor #s Name of the team with the lowest average score per game across all seasons when they are a visitor.

    end

    def lowest_scoring_home_team #s Name of the team with the lowest average score per game across all seasons when they are at home.

    end


    # SEASON
    def winningest_coach #s Name of the Coach with the best win percentage for the season

    end

    def worst_coach #s Name of the Coach with the worst win percentage for the season

    end

    def most_accurate_team #s Name of the Team with the best ratio of shots to goals for the season

    end

    def least_accurate_team #s Name of the Team with the worst ratio of shots to goals for the season

    end

    def most_tackles #s Name of the Team with the most tackles in the season

    end

    def fewest_tackles #s Name of the Team with the fewest tackles in the season

    end
end