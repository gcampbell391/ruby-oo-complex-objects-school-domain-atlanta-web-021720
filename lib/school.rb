# code here!
class School
    attr_accessor :name, :roster 
    def initialize(name, roster = {})
        @name = name 
        @roster = roster
    end 
    def add_student(name, grade)
        repeated_grade = roster.has_key? grade 
        if repeated_grade == true 
        roster[grade] << name
        else 
            roster[grade] = []
            roster[grade] << name
        end 
        roster
    end 
    def grade(grade)
        roster[grade]
    end 
    def sort 
        @roster.each do |grade, name|
        @roster[grade] = name.sort
        end 
    end 
end 
