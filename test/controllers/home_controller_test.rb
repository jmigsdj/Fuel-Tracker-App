require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "/"
    assert_select "h1", "Fuel Tracker 1.0"
  end

end
