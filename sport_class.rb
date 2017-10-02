class Sports

  def initialize(team_name, player_names, coach_name)
    @team = team_name
    @players = player_names
    @coach = coach_name
  end

  def team_name
  return @team
  end

  def player_names
    return @players
  end

  def coach_name
    return @coach
  end
end
