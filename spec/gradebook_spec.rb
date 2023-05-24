require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do

  it "Gradebook works" do

    gradebook = Gradebook.new("Pam")

    course1 = Course.new("Calculus", 2) 
    course2 = Course.new("Art", 3)

    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    student3 = Student.new({name: "Logen", age: 19})
    student4 = Student.new({name: "Paul", age: 25})

    expect(gradebook.instructor).to eq("Pam")
    expect(gradebook.courses).to eq([])

    gradebook.add_course(course1)
    gradebook.add_course(course2)

    expect(gradebook.courses).to eq([course1, course2])

    course1.enroll(student1) 
    course1.enroll(student2)  
    course2.enroll(student3) 
    course2.enroll(student4)
    

    expect(gradebook.list_all_students).to eq({"Art" => [student3, student4], "Calculus" => [student1, student2]})
    
    student1.log_score(89)
    student2.log_score(70)
    student3.log_score(99)
    student4.log_score(60)

    expect(gradebook.students_below(80)).to eq([student2, student4])
  end 

end