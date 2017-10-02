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

  def add_player(player)
    @players << player
    return @players.length
  end

  def player_exists(player)
   @players.include?(player)
  end
end
