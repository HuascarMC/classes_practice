class Sports
attr_accessor :team_name, :players, :coach
  def initialize(team_name, players, coach)
    @team_name= team_name
    @players = players
    @coach = coach
  end

  # def team_name
  # return @team_name
  # end
  #
  # def player_names
  #   return @players
  # end
  #
  # def coach_name
  #   return @coach
  # end
  #
  # def set_coach_name(name)
  #   @coach = name
  # end
end
