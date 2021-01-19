require_relative "Employee.rb"
class Manager < Employee

    attr_reader :employees
    def initialize(name, title, salary, boss)
        @employees = []
        super(name, title, salary, boss)
    end 

    def bonus(multiplier)
        employees_salaries = @employees.map do |ele| 
            ele.salary
        end 
        bonus = employees_salaries.sum * multiplier 
    end 

    def add_employee(employee)
        @employees << employee 
    end 

end 