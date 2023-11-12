class Team
  attr_reader :team_id,
              :franchise_id,
              :team_name,
              :abbreviation,
              :stadium,
              :link,
              :list
  
  def initialize(row, list)
    @team_id       = row[:team_id].to_s
    @franchise_id  = row[:franchise_id].to_s
    @team_name     = row[:team_name].to_s
    @abbreviation  = row[:abbreviation].to_s
    @stadium       = row[:stadium].to_s
    @link          = row[:link].to_s
    @list          = list
  end
  
end
