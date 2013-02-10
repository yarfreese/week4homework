class AutoShop < Business

  attr_reader :employees

  def initialize  shop_name, number, employee
    super shop_name, number   # let superclass (Business) handle the rest
                              # super without params would pass all 3
                              # don't have test for this yet
    @employees = [employee]
  end

  def append_employees array_of_employees
    @employees += array_of_employees   # could try << , append , push , concat 
                                       # (not all work)
  end

  def employee_list 
    @employees.map { |emp| emp.name}.join("\n") 
  end

end
