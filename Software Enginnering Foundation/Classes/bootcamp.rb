class Bootcamp

    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |hash,k| hash[k] = []}
    end

    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def hire(new)
        @teachers << new
    end
    
    def enroll(name)
        if @students.length < @student_capacity
            @students << name
            return true
        else
            return false
        end
    end

    def enrolled?(name)
        if @students.include?(name)
            return true
        else 
            return false
        end
    end

    def student_to_teacher_ratio
        return @students.length/@teachers.length
    end

    def add_grade(name, grade)
        if @students.include?(name)
            @grades[name] << grade
            return true
        else
            return false
        end
    end

    def num_grades(name)
        @grades[name].length
    end

    def average_grade(name)
        if enrolled?(name) == false || num_grades(name) == 0
            return nil
        else
            @grades[name].sum/num_grades(name)
        end
    end

  
  

end


  

           