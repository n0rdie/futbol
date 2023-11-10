require 'CSV'
require_relative './game_team'

class GameTeamList
  attr_reader :game_teams

  def initialize(path, stat_tracker)
      @game_teams = create_game_teams(path)
  end

  def create_game_teams(path)
      data = CSV.parse(File.read(path), headers: true, header_converters: :symbol)
      data.map do |datum|
        GameTeam.new(datum, self)
      end
  end

end
