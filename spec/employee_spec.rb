require 'payslip'



describe 'Employee' do

  context 'Employee Class' do

    it 'check gross_monthly_income' do

      emp = Employee.new('Ren', 60_000)

      expect(emp.gross_monthly_income).to eql(5000.00)

    end

  end



  context 'Employee Class' do

    it 'check income_tax_monthly' do

      emp = Employee.new('Ren', 60_000)

      expect(emp.income_tax_monthly).to eql(1666.75)
    end
  end

  context 'Employee Class' do

    it 'check net_monthly_income' do

      emp = Employee.new('Ren', 60_000)

      expect(emp.net_monthly_income).to eql(3333.25)

    end

  end

end

