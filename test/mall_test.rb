require 'minitest/autorun'
require 'minitest/pride'
require './lib/store'
require './lib/employee'
require './lib/mall'
require 'pry'

class StoreTest < Minitest::Test
  def test_it_has_attributes
    mall = Mall.new

    assert_instance_of Mall, mall
  end

  def test_mall_can_add_stores
    mall = Mall.new
    assert_equal [], mall.stores

    store = Store.new("Brookstone")

    mall.open_store(store)

    assert_equal 1, mall.stores.count
    assert_instance_of Store, mall.stores.first
    assert_equal [], mall.stores.first.employees

    employee_1 = Employee.new("Rachel", 92836, "$32000")
    employee_2 = Employee.new("Sid", 17638, "$30000")

    mall.stores.first.hire_employee(employee_1)
    mall.stores.first.hire_employee(employee_2)

    assert_equal 2, mall.stores.first.employees.count
  end

  g

end
