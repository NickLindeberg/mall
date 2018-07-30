require 'minitest/autorun'
require 'minitest/pride'
require './lib/store'
require './lib/employee'

class StoreTest < Minitest::Test
  def test_it_has_attributes
    store = Store.new("Brookstone")

    assert_equal "Brookstone", store.name
    assert_equal [], store.employees
  end

  def test_employees_can_be_hired
    store = Store.new("Brookstone")
    employee = Employee.new("Rachel", 92836, "$32000")

    store.hire_employee(employee)

    store.employees
    assert_equal 1, store.employees.count
  end

  

end
