class Sports

attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name= team_name
    @players = players
    @coach = coach
    @points = 0
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
    self.players << player
    return @players.length
  end

  def player_exists(player)
   self.players.include?(player)
  end

  def team_score(wonorlost)
    if (wonorlost == 'won')
      score = @points + 1
      return score
    end
    return lost
  end
end
