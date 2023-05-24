class Gradebook
 attr_reader :instructor, :courses
 #attr__accessor :
    def initialize(instructor)
      @instructor = instructor
      @courses = []
    end  

    def add_course(course)
      @courses << course
    end

    def list_all_students
      list = {}
      @courses.each{ |i|  list[i.name] = i.students }
      list
    end 

    def students_below(threshold)
      students_below = []
      @courses.each do |course|  
        course.students.each do |student| 
          if student.grade < threshold
            students_below << student
          end
        end
      end
      students_below
    end

    def all_grades
      grades = {}
      @courses.each do |course|  
        course.students.each do |student| 
            grades[student.name] = student.grade
        end
      end
      grades 
    end

    def students_in_range(min, max)
      students_below = []
      @courses.each do |course|  
        course.students.each do |student| 
          if student.grade < threshold
            students_below << student
          end
        end
      end
      students_below
    end

end
