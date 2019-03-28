require 'test_helper'

class RefuelsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @refuel = refuels(:one)
  end

  test "index should redirect to sign in" do
    get refuels_url
    assert_redirected_to "/users/sign_in"
  end

  test "should get index" do
    sign_in users(:bob)

    get refuels_url
    assert_response :success
  end

  test "should get new" do
    get new_refuel_url
    assert_response :success
  end

  test "should create refuel" do
    assert_difference('Refuel.count') do
      post refuels_url, params: { refuel: {
        date: @refuel.date,
        driver: @refuel.driver,
        vehicle: @refuel.vehicle,
        odometer_reading: @refuel.odometer_reading,
        refuel_location: @refuel.refuel_location,
        fuel_litters: @refuel.fuel_litters
      }}
    end

    assert_redirected_to refuel_url(Refuel.last)
  end

  test "should show refuel" do
    get refuel_url(@refuel)
    assert_response :success
  end

  test "edit should redirect to sign in" do
    get edit_refuel_url(@refuel)
    assert_redirected_to "/users/sign_in"
  end

  test "should get edit" do
    sign_in users(:bob)

    get edit_refuel_url(@refuel)
    assert_response :success
  end

  test "should update refuel" do
    sign_in users(:bob)

    patch refuel_url(@refuel), params: { refuel: {
      date: @refuel.date,
      driver: @refuel.driver,
      vehicle: @refuel.vehicle,
      odometer_reading: @refuel.odometer_reading,
      refuel_location: @refuel.refuel_location,
      fuel_litters: @refuel.fuel_litters
    }}

    assert_redirected_to refuel_url(@refuel)
  end

  test "should destroy refuel" do
    sign_in users(:bob)

    assert_difference('Refuel.count', -1) do
      delete refuel_url(@refuel)
    end

    assert_redirected_to refuels_url
  end
end
