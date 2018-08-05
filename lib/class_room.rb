class ClassRoom
  def initialize(students)
    @students = students
  end

  def list_student_names
    @students.map(&:name).join(',')
  end

  def average_student_age
    @students.map(&:age).inject(:+) / @students.size
  end
end