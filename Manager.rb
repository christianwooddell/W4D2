require_relative "Employee.rb"
class Manager < Employee

    attr_reader :employees
    def initialize(name, title, salary, boss)
        @employees = []
        super(name, title, salary, boss)
    end 

    def bonus(multiplier)
        sum_of_employees_salaries = @employees.inject do |accum, ele| 
            ele.salary + accum 
        end 
        bonus = sum_of_employees_salaries * multiplier 
    end 

    def add_employee(employee)
        @employees << employee 
    end 

end 