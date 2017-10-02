require('minitest/autorun')
require('minitest/rg')
require_relative('../sport_class.rb')

class TestSports< Minitest::Test

  def setup
    @team = Sports.new('Codeam', ['player_1', 'player_2', 'player_3'], 'coach')
  end

  def test_team_name
    assert_equal('Codeam', @team.team_name)
  end

  def test_players
    assert_equal(['player_1', 'player_2', 'player_3'], @team.player_names)
  end

  def test_coach
    assert_equal('coach', @team.coach_name)
  end

end
