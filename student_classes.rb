class CodeClanStudent

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end

  def student_name
    return @student_name
  end

  def cohort
    return @cohort
  end

  def set_student_name(student_name)
    @student_name = student_name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

  def student_talks
    return "I can talk!"
  end

  def say_fav_language(language)
    return "My favorite language is #{language}"
  end
  
end
