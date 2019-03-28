require 'test_helper'

class RefuelTest < ActiveSupport::TestCase
  test "should not save refuel without input" do
    refuel = Refuel.new
    assert_not refuel.save
  end

  test "should not save refuel with missing input" do
    refuel = Refuel.new(
      date: Date.new(2019, 11, 24), 
      driver: "John Doe", 
      odometer_reading: 200, 
      refuel_location: "Philippines", 
      fuel_litters: 54)
    assert_not refuel.save
  end

  test "should save refuel with complete input" do
    refuel = Refuel.new(
      date: Date.new(2019, 11, 24), 
      driver: "John Doe", 
      vehicle: "Car", 
      odometer_reading: 200, 
      refuel_location: "Philippines", 
      fuel_litters: 54)
    assert refuel.save
  end

  test "should not update refuel with missing input" do
    data = {
      date: Date.new(2019, 11, 24), 
      driver: "John Doe", 
      odometer_reading: 200, 
      refuel_location: "Philippines", 
      fuel_litters: 54}

    refuel = Refuel.new
    assert_not refuel.update(data)
  end

  test "should update refuel with complete input" do
    data = {
      date: Date.new(2019, 11, 24), 
      driver: "John Doe", 
      vehicle: "Car", 
      odometer_reading: 200, 
      refuel_location: "Philippines", 
      fuel_litters: 54}

    refuel = Refuel.new
    assert refuel.update(data)
  end
end
