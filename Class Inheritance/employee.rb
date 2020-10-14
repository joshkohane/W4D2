class Employee
    attr_accessor :name, :salary, :title, :boss

    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier) #multiplier is a num
        @salary * multiplier
    end

    def boss=(boss)
        @boss = boss
        @boss.add_employee(self) unless boss.nil?
    end
end