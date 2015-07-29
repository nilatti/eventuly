require 'test_helper'

class AccommodationsControllerTest < ActionController::TestCase
  setup do
    @accommodation = accommodations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accommodations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accommodation" do
    assert_difference('Accommodation.count') do
      post :create, accommodation: { max_females: @accommodation.max_females, max_males: @accommodation.max_males, max_neutral: @accommodation.max_neutral, name: @accommodation.name, nightly_cost: @accommodation.nightly_cost, weekly_cost: @accommodation.weekly_cost }
    end

    assert_redirected_to accommodation_path(assigns(:accommodation))
  end

  test "should show accommodation" do
    get :show, id: @accommodation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accommodation
    assert_response :success
  end

  test "should update accommodation" do
    patch :update, id: @accommodation, accommodation: { max_females: @accommodation.max_females, max_males: @accommodation.max_males, max_neutral: @accommodation.max_neutral, name: @accommodation.name, nightly_cost: @accommodation.nightly_cost, weekly_cost: @accommodation.weekly_cost }
    assert_redirected_to accommodation_path(assigns(:accommodation))
  end

  test "should destroy accommodation" do
    assert_difference('Accommodation.count', -1) do
      delete :destroy, id: @accommodation
    end

    assert_redirected_to accommodations_path
  end
end
