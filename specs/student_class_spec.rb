require('minitest/autorun')
require('minitest/rg')
require_relative('../student_class.rb')

class TestCodeClanStudent < Minitest::Test

  def setup
    @student = CodeClanStudent.new('Huascar', 16)
    @student2 = CodeClanStudent.new('Miguel', 16)
  end

  def test_student_name
    assert_equal('Huascar', @student.student_name)
    assert_equal('Miguel', @student2.student_name)
  end

  def test_cohort
    assert_equal(16, @student.cohort)
    assert_equal(16, @student2.cohort)
  end

  def test_set_student_name
    @student.set_student_name('Andre')
    @student2.set_student_name('John')
    assert_equal('Andre', @student.student_name)
    assert_equal('John', @student2.student_name)
  end

  def test_set_cohort
    @student.set_cohort('0')
    @student2.set_cohort('0')
    assert_equal('0', @student.cohort)
    assert_equal('0', @student2.cohort)
  end

  def test_student_talks
    # result = @student.student_talks
    assert_equal('I can talk!', @student.student_talks)
    assert_equal('I can talk!', @student2.student_talks)
  end

  def test_student_fav_language
    # result = @student.say_fav_language('Ruby')
    assert_equal('My favorite language is Ruby', @student.say_fav_language('Ruby'))
    assert_equal('My favorite language is PHP', @student2.say_fav_language('PHP'))
  end

end
