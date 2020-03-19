require 'test_helper'

class FavroitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favroite = favroites(:one)
  end

  test "should get index" do
    get favroites_url
    assert_response :success
  end

  test "should get new" do
    get new_favroite_url
    assert_response :success
  end

  test "should create favroite" do
    assert_difference('Favroite.count') do
      post favroites_url, params: { favroite: { show_id: @favroite.show_id, user_id: @favroite.user_id } }
    end

    assert_redirected_to favroite_url(Favroite.last)
  end

  test "should show favroite" do
    get favroite_url(@favroite)
    assert_response :success
  end

  test "should get edit" do
    get edit_favroite_url(@favroite)
    assert_response :success
  end

  test "should update favroite" do
    patch favroite_url(@favroite), params: { favroite: { show_id: @favroite.show_id, user_id: @favroite.user_id } }
    assert_redirected_to favroite_url(@favroite)
  end

  test "should destroy favroite" do
    assert_difference('Favroite.count', -1) do
      delete favroite_url(@favroite)
    end

    assert_redirected_to favroites_url
  end
end
