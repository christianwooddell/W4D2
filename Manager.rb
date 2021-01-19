require_relative "Employee.rb"
class Manager < Employee

    def initialize
        @employees = []
        super 
    end 

    def bonus(multiplier)
        sum_of_employees_salaries = @employees.inject do |accum, ele| 
            ele.salary + accum 
        end 
        bonus = sum_of_employees_salaries * multiplier 
    end 
end 