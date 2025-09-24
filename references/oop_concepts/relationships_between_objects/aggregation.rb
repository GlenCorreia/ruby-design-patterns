# A Department has many Professors If the Department is closed, the Professors can still exist and simply join a new department.

class Professor
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Department
  def initialize
    @professors = []
  end

  def add_professor(professor)
    @professors << professor
  end
end

# Usage
math_professor = Professor.new('Dr. Evans')
physics_professor = Professor.new('Dr. Smith')

engineering = Department.new
engineering.add_professor(math_professor)

science = Department.new
science.add_professor(physics_professor)
science.add_professor(math_professor) # Professor is shared

# Even if the 'engineering' department is closed, Dr. Evans still exists
engineering = nil
puts "Dr. Evans can still be found in the science department."
# => Dr. Evans can still be found in the science department.