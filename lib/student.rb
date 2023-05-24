class Student
 attr_reader :name, :age, :scores
 #attr__accessor :
    def initialize(hash)
      @name = hash[:name]
      @age = hash[:age]
      @scores = []


    end  

    def log_score(score)
      @scores << score
    end

    def grade 
      (@scores.reduce(0){ |sum, num| sum + num})/@scores.count.to_f
    end



end
