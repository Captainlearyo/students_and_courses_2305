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

    end

end
