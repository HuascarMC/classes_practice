class Sports

  def initialize(team_name, player_names, coach_name)
    @team_name= team_name
    @players = player_names
    @coach = coach_name
  end

  def team_name
  return @team_name
  end

  def player_names
    return @players
  end

  def coach_name
    return @coach
  end

  def set_coach_name(name)
    @coach = name
  end
end
