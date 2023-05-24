require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do

  it "Gradebook works" do
gradebook = Gradebook.new("Pam")

    course1 = Course.new("Calculus", 2) 

    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})

    expect(gradebook.instructor).to eq("Pam")
    expect(gradebook.courses).to eq([])

    gradebook.add_course(course1)

    expect(gradebook.courses).to eq([course1])

    
  end 

end