require 'pry'

# A Student has a Teacher. When the student is destroyed (e.g., graduates), the Teacher still exists independently

class Teacher
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Student
  attr_accessor :teacher

  def initialize(name, teacher)
    @name = name
    @teacher = teacher
  end
end

# Usage
math_teacher = Teacher.new('Ms. Davies')
student = Student.new('Alex', math_teacher)

puts "Alex's teacher is #{student.teacher.name}."
# => Alex's teacher is Ms. Davies.

# If the student object is removed, the teacher object still exists
student = nil
puts "Ms. Davies still exists: #{math_teacher.name}"
# => Ms. Davies still exists: Ms. Davies