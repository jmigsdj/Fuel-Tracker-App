require 'test_helper'

class EmployeeFlowTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "can create refuel" do
    get "/refuels/new"
    assert_response :success
   
    post "/refuels",
      params: { refuel: { 
        date: Date.new(2019, 11, 24), 
        driver: "John Doe", 
        vehicle: "Car", 
        odometer_reading: 200, 
        refuel_location: "Philippines", 
        fuel_litters: 1000 } }
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end
end
