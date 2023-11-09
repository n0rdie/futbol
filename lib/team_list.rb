require 'CSV'
require './lib/team'

class TeamList
    attr_reader :list

    def initialize
        @list = []
        list_fill
    end

    def list_fill
        CSV.foreach('./data/teams.csv', headers: true, header_converters: :symbol) do |row|
            team_id = row[:team_id].to_i
            franchise_id = row[:franchiseid].to_i
            team_name = row[:teamname].to_s
            abbreviation = row[:abbreviation].to_s
            stadium = row[:stadium].to_s
            link = row[:link].to_s
        
            new_team = Team.new(team_id,franchise_id,team_name,abbreviation,stadium,link)
        
            @list.append(new_team)
        end
    end
end