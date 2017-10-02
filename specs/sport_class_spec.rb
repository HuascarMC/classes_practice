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
    assert_equal(['player_1', 'player_2', 'player_3'], @team.players)
  end

  def test_coach
    assert_equal('coach', @team.coach)
  end

  def test_set_coach_name
    @team.coach = 'Yoni'
    assert_equal('Yoni', @team.coach)
  end

  def test_add_player
    assert_equal(4, @team.add_player('player_4'))
  end

  def test_player_exists
    @team.players[0]
    assert_equal(true, @team.player_exists('player_2'))
  end
end
