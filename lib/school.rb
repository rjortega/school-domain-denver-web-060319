class School
    attr_reader :name
    attr_accessor :roster

    def initialize name
        @name = name
        @roster = {}
    end
    def self.roster
        @@roster
    end
    def add_student name, grade
        @roster[grade] ||= []
        @roster[grade] << name
    end
    def grade grade
        @roster[grade]
    end
    def sort
        roster.each_with_object ({}) do |(grade, students), hash|
            hash[grade] = students.sort
        end
    end
end