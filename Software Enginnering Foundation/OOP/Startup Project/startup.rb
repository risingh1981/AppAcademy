require_relative "employee"

# attr_reader :name, :funding, :salaries, :employees
attr_accessor :name, :funding, :salaries, :employees

class Startup
    # should accept as args: name (string), funding (number), and salaries (hash) containing 
    # `title` => `salary` pairs"
    def initialize(name, funding, salaries)
        # "should set @name, @funding, and @salaries with their respective args"
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []

    end

    def valid_title?(title)
        @salaries.has_key?(title)
    end

    def >(other)
        @funding > other.funding
    end

    def hire(name, title)
        if self.valid_title?(title)
            @employees << Employee.new(name,title)
        else
            raise "title does not exist"
        end
    end

    def size
        @employees.length
    end

    def pay_employee(employee)
        amount = self.salaries[employee.title]
        if @funding >= amount
            employee.pay(amount)
            @funding -= amount
        else
            raise "Funding insufficient to pay employee"
        end
    end

    def payday
        @employees.each do |employee|
            self.pay_employee(employee)    
        end
        
    end

    def average_salary
        total = 0
        @employees.each do |employee|
            total += self.salaries[employee.title]
        end
        avg = total / (@employees.length * 1.0)

        avg
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(startup)
        @funding += startup.funding

        startup.salaries.each do |title, amount|
            if !@salaries.has_key?(title)
                @salaries[title] = amount
            end
        end

        @employees += startup.employees
        startup.close
    end
end
