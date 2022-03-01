# class of employee

class Employee
  attr_accessor :name, :annual_salary

  def initialize(name, annual_salary)
    @name = name

    @annual_salary = annual_salary
  end

  def gross_monthly_income
    (@annual_salary.to_f / 12).round(2)
  end

  def net_monthly_income
    (gross_monthly_income - income_tax_monthly).round(2)
  end

  def income_tax_monthly
    (income_tax.to_f / 12).round(2)
  end

  def income_tax
    taxmap = { 20_000 => 0, 20_001 => 0.10, 40_001 => 0.20, 80_001 => 0.30, 180_001 => 0.40 }

    income = @annual_salary

    tax = 0

    taxable_amount = 0

    taxmap.select do |key, value|
      if (income >= key) && income.positive?

        taxable_amount = key

      elsif taxable_amount == income

      end

      tax += (taxable_amount * value)

      income -= taxable_amount
    end

    tax.round
  end

  employee = Employee.new('Ren', 60_000)

  puts "Monthly Payslip for: #{employee.name}"

  puts "Gross Monthly Income: $#{'%.2f' % employee.gross_monthly_income}"

  puts "Monthly Income Tax: $#{'%.2f' % employee.income_tax_monthly}"

  puts "Net Monthly Income: $#{'%.2f' % employee.net_monthly_income}"
end
