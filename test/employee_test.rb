require 'minitest/autorun'
require 'minitest/pride'
require './lib/employee'

class EmployeeTest < Minitest::Test
  def test_it_has_attributes
    employee = Employee.new("Rachel", 92836, "$32000")

    assert_instance_of Employee, employee
    assert_equal "Rachel", employee.name
    assert_equal 92836, employee.employee_id
    assert_equal 32000, employee.salary
  end

end
