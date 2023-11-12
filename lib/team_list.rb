require 'CSV'
require_relative './team'

class TeamList
  attr_reader :teams, :stat_tracker

  def initialize(path, stat_tracker)
    @teams = create_teams(path)
    @stat_tracker = stat_tracker #added this to have access to stat tracker going backwards
  end
  
  def create_teams(path)
    data = CSV.parse(File.read(path), headers: true, header_converters: :symbol)
    data.map do |datum|
      Team.new(datum, self)
    end
  end

  def get_name_from_team_id(id)
    p @teams
    (@teams.find { |team| team.team_id == id}).team_name
  end

end