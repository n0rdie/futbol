require 'CSV'
require_relative './game'

class GameList
  attr_reader :games, 
              :stat_tracker

  def initialize(path, stat_tracker)
    @games = create_games(path)
    @stat_tracker = stat_tracker
  end

  def create_games(path)
      data = CSV.parse(File.read(path), headers: true, header_converters: :symbol)
      data.map do |datum|
        Game.new(datum, self)
      end
    end

  def highest_total_score
    @games.max_by do |game|
      game.total_score
    end.total_score
  end

  def lowest_total_score
    @games.min_by do |game|
      game.total_score
    end.total_score
  end

  # need to change games_subset.csv in order to test this method properly. Currently, all 20 sample games are from the same season (20122013)
  def count_of_games_by_season
    games_per_season = Hash.new(0)
    @games.map do |game|
      games_per_season[game.season] += 1
    end
  end

  def average_goals_per_game
    total_goals = 0
    @games.each do |game|
      total_goals += game.away_goals
      total_goals += game.home_goals
    end
    total_goals
  end

  def average_goals_by_season
    seasons = {}
    @games.each do |game|
      if seaons.has_key?(game.season) == false

      else
        seasons[game.season] 
      end
    end
  end

  def highest_scoring_home_team
    teams_score = {}
    @games.each do |game|
      if teams_score.has_key?(game.home_team_id)
        teams_score[game.home_team_id]["total_goals"] += game.home_goals
        teams_score[game.home_team_id]["game_count"] += 1
      else
        teams_score[game.home_team_id] = {"total_goals"=>game.home_goals, "game_count"=>1}
      end
    end

    highest_average_score = 0.0
    highest_team_id = nil

    teams_score.each do |team_id, data|
      if data["total_goals"].to_f / data["game_count"].to_f > highest_average_score
        highest_average_score = data["total_goals"].to_f / data["game_count"].to_f
        highest_team_id = team_id
      end
    end

    highest_team_id
  end

  def highest_scoring_visitor
    teams_score = {}
    @games.each do |game|
      if teams_score.has_key?(game.away_team_id)
        teams_score[game.away_team_id]["total_goals"] += game.away_goals
        teams_score[game.away_team_id]["game_count"] += 1
      else
        teams_score[game.away_team_id] = {"total_goals"=>game.away_goals, "game_count"=>1}
      end
    end

    highest_average_score = 0.0
    highest_team_id = nil

    teams_score.each do |team_id, data|
      if data["total_goals"].to_f / data["game_count"].to_f > highest_average_score
        highest_average_score = data["total_goals"].to_f / data["game_count"].to_f
        highest_team_id = team_id
      end
    end

    highest_team_id
  end
end
