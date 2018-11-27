require 'test_helper'

class PlantControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get plant_index_url
    assert_response :success
  end

  test "should get show" do
    get plant_show_url
    assert_response :success
  end

end
