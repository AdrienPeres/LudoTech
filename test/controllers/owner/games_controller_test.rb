require 'test_helper'

class Owner::GamesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get owner_games_index_url
    assert_response :success
  end

  test "should get new" do
    get owner_games_new_url
    assert_response :success
  end

  test "should get create" do
    get owner_games_create_url
    assert_response :success
  end

end
