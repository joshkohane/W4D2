require_relative 'employee'

class Manager < Employee
    attr_reader :all_employees

    def initialize(name, title, salary, boss = nil)
        super(name, title, salary, boss) # no space

        @all_employees = []

    end

    def bonus(multiplier)
        self.total_subsalary * multiplier
    end

    def total_subsalary
        subsalary = 0
        self.all_employees.each do |employee|
            if employee.is_a?(Manager)
                subsalary += employee.salary + employee.total_subsalary
            else
                subsalary += employee.salary
            end
        end
        subsalary
    end

    def add_employee(employee)
        @all_employees << employee
        
    end

end