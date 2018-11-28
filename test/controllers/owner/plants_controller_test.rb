require 'test_helper'

class Owner::PlantsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get owner_plants_index_url
    assert_response :success
  end

end
