class CodeClanStudent

  def initialize(input_student, cohort)
    @student = input_student
    @cohort = cohort
  end

  def student_name
    @student
  end

  def cohort
    @cohort
  end

  def set_student_name(input_student)
    @student = input_student
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

  def student_talks
    return "I can talk!"
  end

  def say_fav_language(language)
    puts "My favorite language is #{language}"
    return "My favorite language is #{language}"
  end

end
