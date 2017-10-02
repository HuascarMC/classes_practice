class Sports

attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  # def team_name
  #  @team_name
  # end
  #
  # def player_names
  #   @players
  # end
  #
  # def coach_name
  #   @coach
  # end
  #
  def set_coach_name(name)
    @coach = name
  end

  def add_player(player)
    self.players << player
    @players
  end

  def player_exists(player)
   self.players.include?(player)
  end

  def team_score(result)
    score = 0
    case result
    when "won"
      return result
    when 'lost'
      score = @points += 1
      return 'won'
    end
  end
end
