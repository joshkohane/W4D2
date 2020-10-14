class Employee

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
        @boss.add_employee(self)
    end
end