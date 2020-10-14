require_relative 'employee'

class Manager < Employee

    def initialize(name, title, salary, boss = nil)
        super(name, title, salary, boss) # no space

        @all_employees = []

    end

    def bonus(multiplier)
        sum = 0
        @all_employees.each do |employee|
            sum += employee.salary
        end
        sum * multiplier
    end

    def add_employee(employee)
        @all_employees << employee
        
    end

end