require('minitest/autorun')
require('minitest/rg')
require_relative('../classes.rb')

class TestCodeClanStudent < Minitest::Test

  def setup
    @student = CodeClanStudent.new('Huascar', 16)
  end

  def test_student_name
    assert_equal('Huascar', @student.student_name)
  end

  def test_cohort
    assert_equal(16, @student.cohort)
  end

  def test_set_student_name
    @student.student_name = 'Andre'
    assert_equal('Andre', @student.student_name)
  end
end
